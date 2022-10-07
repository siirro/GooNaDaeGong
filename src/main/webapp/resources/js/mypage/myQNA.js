const qnatitle = document.querySelectorAll(".qnatitle");
const addqna = document.querySelectorAll(".addqna");

//문의 아코디언
for(let i =0; i<qnatitle.length; i++){

qnatitle[i].addEventListener("click",function(){
    console.log("응애?");

    if(!qnatitle[i].classList.contains('css-4l2co')){
        qnatitle[i].classList.replace('css-14e35e','css-4l2co');

        addqna[i].classList.toggle('show');
    }else if(!qnatitle[i].classList.contains('css-14e35e')){
        qnatitle[i].classList.replace('css-4l2co','css-14e35e');
        addqna[i].classList.toggle('show');
    }
 })
    
}