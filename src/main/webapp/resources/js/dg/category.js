
// 대분류
const hbg_menu2 = document.getElementsByClassName("hbg_menu2");
const hbg_menu3 = document.getElementsByClassName("hbg_menu3");
const hbg_menu4 = document.getElementsByClassName("hbg_menu4");

// 소분류
const hbg_submenu1 = document.getElementsByClassName("hbg_submenu1");
const hbg_submenu2 = document.getElementsByClassName("hbg_submenu2");
const hbg_submenu3 = document.getElementsByClassName("hbg_submenu3");
const hbg_submenu4 = document.getElementsByClassName("hbg_submenu4");


hbg_menu4[0].style.display="block";

for(var i=0; i<hbg_menu3.length; i++) {
hbg_menu3.addEventListener("click",function(){
    console.log("test")
    // hbg_menu4.classList.replace('hbg_submenu3', 'hbg_submenu3 hbg_on_long');
})
}
