const category1 = document.querySelector('#category1');
const category2 = document.querySelector('#category2');
const category3 = document.querySelector('#category3');
const category4 = document.querySelector('#category4');
const cate_num = document.querySelector('#cate_num');

category1.addEventListener('change',function(){
    let cate2Child = document.getElementsByClassName("cate2Child");
    for(let i=0; cate2Child.length;){
        category2.removeChild(cate2Child[0]);
    } 

    let cate3Child = document.getElementsByClassName("cate3Child");
    for(let i=0; cate3Child.length;){
        category3.removeChild(cate3Child[0]);
    }

    let cate4Child = document.getElementsByClassName("cate4Child");
    for(let i=0; cate4Child.length;){
        category4.removeChild(cate4Child[0]);
    }
    getCategory2();

    let value = document.createAttribute("value");
	value.value=category1.value;
	cate_num.setAttributeNode(value);
});


category2.addEventListener('change',function(){
    let cate3Child = document.getElementsByClassName("cate3Child");
    for(let i=0; cate3Child.length;){
        category3.removeChild(cate3Child[0]);
    }

    let cate4Child = document.getElementsByClassName("cate4Child");
    for(let i=0; cate4Child.length;){
        category4.removeChild(cate4Child[0]);
    }
    getCategory3();

    let value = document.createAttribute("value");
    value.value=category2.value;
    cate_num.setAttributeNode(value);
});


category3.addEventListener('change',function(){
    let cate4Child = document.getElementsByClassName("cate4Child");
    for(let i=0; cate4Child.length;){
        category4.removeChild(cate4Child[0]);
    }
    getCategory4();

    let value = document.createAttribute("value");
    value.value=category3.value;
    cate_num.setAttributeNode(value);
});


category4.addEventListener('change',function(){
    let value = document.createAttribute("value");
    value.value=category4.value;
    cate_num.setAttributeNode(value);
});


function getCategory1() {
    const xhttp = new XMLHttpRequest();
    xhttp.open('GET','./category');
    xhttp.send();
    xhttp.onreadystatechange=function(){
        if(this.readyState==4 && this.status==200){
            let jsonData = JSON.parse(this.responseText.trim());

            //1차 분류 셀렉트 박스에 데이터 삽입
            for(let i=0; jsonData.length; i++) {
                if(jsonData[i].cate_group==1) {
                    let option = document.createElement("option");  
                    let contents = document.createTextNode(jsonData[i].cate_name);
                    let attribute = document.createAttribute("value");
                    attribute.value = jsonData[i].cate_num;
                    option.setAttributeNode(attribute);
                    option.appendChild(contents);
                    category1.append(option);
                }
            }
        }
    }
}


function getCategory2() {
    const xhttp = new XMLHttpRequest();
    xhttp.open('GET','./category');
    xhttp.send();
    xhttp.onreadystatechange=function(){
        if(this.readyState==4 && this.status==200){
            let jsonData = JSON.parse(this.responseText.trim());

            //2차 분류 셀렉트 박스에 데이터 삽입
            for(let i=0; i<jsonData.length; i++) {
                if(jsonData[i].cate_ref==category1.value) {
                    let option = document.createElement("option");  
                    let contents = document.createTextNode(jsonData[i].cate_name);
                    let attribute1 = document.createAttribute("value");
                    let attribute2 = document.createAttribute("class");
                    attribute1.value = jsonData[i].cate_num;
                    attribute2.value = 'cate2Child';
                    option.setAttributeNode(attribute1);
                    option.setAttributeNode(attribute2);
                    option.appendChild(contents);
                    category2.append(option);
                }
            }
        }
    }
}


function getCategory3() {
    const xhttp = new XMLHttpRequest();
    xhttp.open('GET','./category');
    xhttp.send();
    xhttp.onreadystatechange=function(){
        if(this.readyState==4 && this.status==200){
            let jsonData = JSON.parse(this.responseText.trim());

            //3차 분류 셀렉트 박스에 데이터 삽입
            for(let i=0; i<jsonData.length; i++) {
                if(jsonData[i].cate_ref==category2.value) {
                    let option = document.createElement("option");  
                    let contents = document.createTextNode(jsonData[i].cate_name);
                    let attribute1 = document.createAttribute("value");
                    let attribute2 = document.createAttribute("class");
                    attribute1.value = jsonData[i].cate_num;
                    attribute2.value = 'cate3Child';
                    option.setAttributeNode(attribute1);
                    option.setAttributeNode(attribute2);
                    option.appendChild(contents);
                    category3.append(option);
                }
            }
        }
    }
}


function getCategory4() {
    const xhttp = new XMLHttpRequest();
    xhttp.open('GET','./category');
    xhttp.send();
    xhttp.onreadystatechange=function(){
        if(this.readyState==4 && this.status==200){
            let jsonData = JSON.parse(this.responseText.trim());

            //4차 분류 셀렉트 박스에 데이터 삽입
            for(let i=0; i<jsonData.length; i++) {
                if(jsonData[i].cate_ref==category3.value) {
                    let option = document.createElement("option");  
                    let contents = document.createTextNode(jsonData[i].cate_name);
                    let attribute1 = document.createAttribute("value");
                    let attribute2 = document.createAttribute("class");
                    attribute1.value = jsonData[i].cate_num;
                    attribute2.value = 'cate4Child';
                    option.setAttributeNode(attribute1);
                    option.setAttributeNode(attribute2);
                    option.appendChild(contents);
                    category4.append(option);
                }
            } 
        }
    }
}
