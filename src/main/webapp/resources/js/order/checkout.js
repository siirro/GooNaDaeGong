var IMP = window.IMP; // 생략 가능
    IMP.init("imp26813326"); // 예: imp00000000

    const user_name = document.getElementById("user_name").value;
    const user_phone = document.getElementById("user_phone").value;
    const user_email = document.getElementById("user_email").value;
    const user_addr = document.getElementById("user_addr").value;
    const user_addr2 = document.getElementById("user_addr2").value;
    const user_post = document.getElementById("user_post").value;
    const item_title = document.getElementsByClassName("item_title");
    let lll = item_title.length-1;

    function timestamp(){
        function pad(n) { return n<10 ? "0"+n : n }
        d=new Date();
        d = d.getFullYear()+"/"+
        pad(d.getMonth()+1)+"/"+
        pad(d.getDate())+
        pad(d.getHours())+":"+
        pad(d.getMinutes())+":"+
        pad(d.getSeconds());
        return d
    };


    function requestPay() {

      const ord_total2 = document.getElementById("ord_total2").value;
      const ord_total1 = document.getElementById("ord_total1").value;
      const ord_delfree = document.getElementById("ord_delfree").value;
      const user_id = document.getElementById("user_id").value;
      const ord_name = document.getElementById("ord_name").value;
      const ord_post = document.getElementById("ord_post").value;
      const ord_addr = document.getElementById("ord_addr").value;
      const ord_addr2 = document.getElementById("ord_addr2").value;
      const ord_phone = document.getElementById("ord_phone").value;
      const ord_memo = document.getElementById("ord_memo").value;

      //주문상세를 위한애들
      const item_num = document.getElementsByClassName("item_num");
      const item_count = document.getElementsByClassName("item_count");

      // IMP.request_pay(param, callback) 결제창 호출
      IMP.request_pay({ // param
          pg: "html5_inicis",
          pay_method: "card",
          merchant_uid: new Date().getTime(),
          name: item_title[0].value+" 외 "+lll+"개",
          amount: ord_total2,
          buyer_email: user_email,
          buyer_name: user_name,
          buyer_tel: user_phone,
          buyer_addr: user_addr+" "+user_addr2,
          buyer_postcode: user_post
    }, function (rsp) { // callback
        if (rsp.success) {
            console.log("결제성공완료");
            timestamp();
            let good=2;

            //1. XMLHTTPRequest 생성 2.준비 3.enctype 4.전송
            const xhttp2 = new XMLHttpRequest();
            xhttp2.open("POST","/order/orders");
            xhttp2.setRequestHeader("Content-type","application/x-www-form-urlencoded");
            xhttp2.send(

            "merchant_uid="+rsp.merchant_uid+
            "&user_id="+user_id+
            "&ord_payment="+2+
            "&ord_status="+"결제완료"+
            "&ord_total1="+ord_total1+
            "&ord_delfree="+ord_delfree+
            "&ord_total2="+ord_total2+
            "&ord_name="+ord_name+
            "&ord_post="+ord_post+
            "&ord_addr="+ord_addr+
            "&ord_addr2="+ord_addr2+
            "&ord_phone="+ord_phone+
            "&ord_memo="+ord_memo
            
            );
            xhttp2.onreadystatechange=function(){
                if(this.readyState==4 && this.status==200){
                    let result = xhttp2.responseText.trim();
                    result = JSON.parse(result);
                    
                    if(result.result==1) {
                      // 결제 ajax
                      const xhttp = new XMLHttpRequest();
                      xhttp.open("POST","/order/pay");
                      xhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
                      xhttp.send(
                        "imp_uid="+rsp.imp_uid+
                        "&merchant_uid="+rsp.merchant_uid+
                        "&pay_total="+ord_total2+
                        "&pay_result="+good
                      );
                      xhttp.onreadystatechange=function(){
                        if(this.readyState==4 && this.status==200){
                            let result = xhttp.responseText.trim();
                            result = JSON.parse(result);
                            if(result.result==1) {
                              
                              //주문상세 ajax
                              for(let i=0;i<item_num.length;i++) {
                                const xhttp = new XMLHttpRequest();
                                xhttp.open("POST","/order/goodsOrder");
                                xhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
                                xhttp.send(
                                  "item_num="+item_num[i].value+
                                  "&merchant_uid="+rsp.merchant_uid+
                                  "&go_amount="+item_count[i].value
                                );
                                   
                                xhttp.onreadystatechange=function(){
                                  if(this.readyState==4 && this.status==200){

                                      let result = xhttp.responseText.trim();
                                      result = JSON.parse(result);
                                      if(result.result==1) {
                                        document.location.href="./success";
                                      } else {
                                        console.log("주문상세DB 등록실패");
                                      }
                                  } 
                                };
                              };
                              //주문상세

                            } else {
                              console.log("결제DB 등록실패");
                            }
                        } 
                      };
                    } else {
                      console.log("주문DB 등록실패");
                    }
                } 
            };
            //DB ajax 두개 전부 끝
    
        } else {
            console.log("결제실패했다");
              // 결제 실패 시 로직,
            alert("결제에 실패하였습니다. " +  rsp.error_msg);  
              
          }
      });
    }