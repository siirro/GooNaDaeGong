const hbg = document.getElementById("hbg");

const hbg_menu1 = document.getElementsByClassName("hbg_menu1"); //1개
const hbg_menu2 = document.getElementsByClassName("hbg_menu2"); //9개
const hbg_menu3 = document.getElementsByClassName("hbg_menu3"); //19개
const hbg_menu4 = document.getElementsByClassName("hbg_menu4"); //23개


const hbg_submenu1 = document.getElementsByClassName("hbg_submenu1"); //9개
const hbg_submenu2 = document.getElementsByClassName("hbg_submenu2"); //49개
const hbg_submenu3 = document.getElementsByClassName("hbg_submenu3"); //74개
const hbg_submenu4 = document.getElementsByClassName("hbg_submenu4"); //74개

const hbg_line_2 = document.getElementsByClassName("hbg_line_2");
const hbg_line_3 = document.getElementsByClassName("hbg_line_3");

const hbg_bg = document.getElementsByClassName("hbg_bg");


hbg.addEventListener("click", function () {
    hbg_menu1[0].style.display = "block";
    hbg_bg[0].style.display = "block";
});

hbg.addEventListener("mouseleave", function () {
    hbg_menu1[0].style.display = "none";
    hbg_bg[0].style.display = "none";
});

// 1그룹에 마우스이벤트
for (let i = 0; i < hbg_submenu1.length; i++) {
    hbg_submenu1[i].addEventListener("mouseenter", function () {
        hbg_menu2[i].style.display = "block";

    });
    hbg_submenu1[i].addEventListener("mouseleave", function () {
        hbg_menu2[i].style.display = "none";

    });
};

// 2그룹에 마우스이벤트
for (let j = 0; j < hbg_submenu2.length; j++) {
    hbg_submenu2[j].addEventListener("mouseenter", function () {
        hbg_menu3[j].style.display = "block";
        console.log( hbg_menu3[j])
        hbg_line_2[0].style.display = "block";


    });
    hbg_submenu2[j].addEventListener("mouseleave", function () {
        hbg_menu3[j].style.display = "none";
        hbg_line_2[0].style.display = "none";

    });
    
};

// 3그룹에 마우스이벤트
for (let k = 0; k < hbg_submenu3.length; k++) {
    hbg_submenu3[k].addEventListener("mouseenter", function () {
        hbg_menu4[k-1].style.display = "block";
        console.log(hbg_menu4[k-1]);

        hbg_line_3[0].style.display = "block";
    });

    hbg_submenu3[k].addEventListener("mouseleave", function () {
        hbg_menu4[k-1].style.display = "none";
        hbg_line_3[0].style.display = "none";
    });

    // if(hbg_submenu3 == 7) {
    //     [k] = 0;
    // }

};