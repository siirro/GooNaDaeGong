<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/resources/css/index/recentItem.css">
    <title>Document</title>
</head>
<body>
    
<!-- 최근 본 상품 -->
<nav class="css-1uufpby e1tjwjt913">
    <!-- <a href="/shop/event/kurlyEvent.php?htmid=event/delivery_search/delivery_search" class="css-0 e1tjwjt912">
        <img src="https://res.kurly.com/_next/static/images/deliveryInfo_20220701-a7b19dac069402e4b2aea7edbed0f6e0.png"
            alt="" class="css-bkdy9y e1tjwjt911">
    </a>
    <ul class="css-hd6zoq e1tjwjt910">
        <li class="css-1fk9s65 e1tjwjt99">
            <a href="/shop/main/html.php?htmid=event/kurly.htm&amp;name=lovers" class="css-0 e1tjwjt98"> 등급별 혜택</a>
        </li>

        <li class="css-1fk9s65 e1tjwjt99">
            <a href="/shop/board/list.php?id=recipe" class="css-0 e1tjwjt98">레시피</a>
        </li>

        <li class="css-1fk9s65 e1tjwjt99">
            <a href="/shop/goods/goods_review_best.php" class="css-0 e1tjwjt98">베스트 후기</a>
        </li>
    </ul> -->

    <div class="css-1mv62lp e1tjwjt97">
        <button onclick="scrollWin(0, -50)"  class="css-c584eq e1tjwjt91"></button>
        <strong class="css-1qe3ztt e1tjwjt96">최근 본 상품</strong>
        <div class="css-1wbo0ol e1tjwjt95" id="e1tjwjt95">
            <ul class="css-8erlkd e1tjwjt94">
                <c:forEach items="${productList}" var="product">
                    <li class="css-1vgyrcu e1tjwjt93">
                	    <a href="/item/detail?item_num=${product.item_num}" class="css-10nxrmy e1tjwjt92">
                		    <img src="../resources/upload/item/${product.fileName}" class="css-68s41j e1tjwjt90" style="width: 60px; height: 80px;">
                	    </a>
                    </li>
                </c:forEach>
                
                <!--  <li class="css-1vgyrcu e1tjwjt93">
                    <a href="/goods/5000574" class="css-10nxrmy e1tjwjt92">
                        <img src="https://img-cf.kurly.com/cdn-cgi/image/width=60,format=auto/shop/data/goods/big/201511/574_shop1_464859.jpg" class="css-68s41j e1tjwjt90">
                    </a>
                </li>

                <li class="css-1vgyrcu e1tjwjt93">
                    <a href="/goods/5095790" class="css-10nxrmy e1tjwjt92">
                        <img src="https://img-cf.kurly.com/cdn-cgi/image/width=60,format=auto/shop/data/goods/1648210751118l0.jpeg" class="css-68s41j e1tjwjt90">
                    </a>
                </li> -->
                
                
                <!--<li class="css-1vgyrcu e1tjwjt93"><a href="/goods/5155315"
                        class="css-10nxrmy e1tjwjt92"><img
                            src="https://img-cf.kurly.com/cdn-cgi/image/width=60,format=auto/shop/data/goods/1658128895196l0.jpg"
                            class="css-68s41j e1tjwjt90"></a></li>
                <li class="css-1vgyrcu e1tjwjt93"><a href="/goods/5062328"
                        class="css-10nxrmy e1tjwjt92"><img
                            src="https://img-cf.kurly.com/cdn-cgi/image/width=60,format=auto/shop/data/goods/1653034699910l0.jpeg"
                            class="css-68s41j e1tjwjt90"></a></li>
                <li class="css-1vgyrcu e1tjwjt93"><a href="/goods/1000015336"
                        class="css-10nxrmy e1tjwjt92"><img
                            src="https://product-image.kurly.com/cdn-cgi/image/width=60,format=auto/product/image/3399642c-2667-4c48-be47-ac3f42f4926e.jpg"
                            class="css-68s41j e1tjwjt90"></a></li>
                <li class="css-1vgyrcu e1tjwjt93"><a href="/goods/5048086"
                        class="css-10nxrmy e1tjwjt92"><img
                            src="https://img-cf.kurly.com/cdn-cgi/image/width=60,format=auto/shop/data/goods/1647483683658l0.jpg"
                            class="css-68s41j e1tjwjt90"></a></li>
                <li class="css-1vgyrcu e1tjwjt93"><a href="/goods/1000038062"
                        class="css-10nxrmy e1tjwjt92"><img
                            src="https://3p-image.kurly.com/cdn-cgi/image/width=60,format=auto/product-image/ceb71dc8-7bae-4dc7-8a2b-3350ed9ead4a/f32d9626-faf4-4feb-bc1d-24aaf5b5c64f.jpg"
                            class="css-68s41j e1tjwjt90"></a></li>
                <li class="css-1vgyrcu e1tjwjt93"><a href="/goods/5006326"
                        class="css-10nxrmy e1tjwjt92"><img
                            src="https://img-cf.kurly.com/cdn-cgi/image/width=60,format=auto/shop/data/goods/1590727907156l0.jpg"
                            class="css-68s41j e1tjwjt90"></a></li>
                <li class="css-1vgyrcu e1tjwjt93"><a href="/goods/5066745"
                        class="css-10nxrmy e1tjwjt92"><img
                            src="https://product-image.kurly.com/cdn-cgi/image/width=60,format=auto/product/image/2e94fa57-6c50-4e0b-b39e-7a7491675b8b.jpg"
                            class="css-68s41j e1tjwjt90"></a></li>
                <li class="css-1vgyrcu e1tjwjt93"><a href="/goods/5099161"
                        class="css-10nxrmy e1tjwjt92"><img
                            src="https://img-cf.kurly.com/cdn-cgi/image/width=60,format=auto/shop/data/goods/1648206336223l0.jpeg"
                            class="css-68s41j e1tjwjt90"></a></li>
                <li class="css-1vgyrcu e1tjwjt93"><a href="/goods/5156468"
                        class="css-10nxrmy e1tjwjt92"><img
                            src="https://img-cf.kurly.com/cdn-cgi/image/width=60,format=auto/shop/data/goods/1657614949985l0.jpg"
                            class="css-68s41j e1tjwjt90"></a></li>
                <li class="css-1vgyrcu e1tjwjt93"><a href="/goods/1000050878"
                        class="css-10nxrmy e1tjwjt92"><img
                            src="https://product-image.kurly.com/cdn-cgi/image/width=60,format=auto/product/image/ddb65267-9e25-4d2f-a1eb-42284cd2da49.jpg"
                            class="css-68s41j e1tjwjt90"></a></li>
                <li class="css-1vgyrcu e1tjwjt93"><a href="/goods/5004424"
                        class="css-10nxrmy e1tjwjt92"><img
                            src="https://img-cf.kurly.com/cdn-cgi/image/width=60,format=auto/shop/data/goods/1622166405389l0.jpg"
                            class="css-68s41j e1tjwjt90"></a></li>
                <li class="css-1vgyrcu e1tjwjt93"><a href="/goods/5134224"
                        class="css-10nxrmy e1tjwjt92"><img
                            src="https://img-cf.kurly.com/cdn-cgi/image/width=60,format=auto/shop/data/goods/1651567017147l0.jpg"
                            class="css-68s41j e1tjwjt90"></a></li>
                <li class="css-1vgyrcu e1tjwjt93"><a href="/goods/5082812"
                        class="css-10nxrmy e1tjwjt92"><img
                            src="https://img-cf.kurly.com/cdn-cgi/image/width=60,format=auto/shop/data/goods/1649578653536l0.jpg"
                            class="css-68s41j e1tjwjt90"></a></li>
                <li class="css-1vgyrcu e1tjwjt93"><a href="/goods/1000015338"
                        class="css-10nxrmy e1tjwjt92"><img
                            src="https://product-image.kurly.com/cdn-cgi/image/width=60,format=auto/product/image/359b2914-c39c-4f9f-8e78-39ea097dff4d.jpg"
                            class="css-68s41j e1tjwjt90"></a></li>
                <li class="css-1vgyrcu e1tjwjt93"><a href="/goods/5066667"
                        class="css-10nxrmy e1tjwjt92"><img
                            src="https://img-cf.kurly.com/cdn-cgi/image/width=60,format=auto/shop/data/goods/1613537786670l0.jpg"
                            class="css-68s41j e1tjwjt90"></a></li>
                <li class="css-1vgyrcu e1tjwjt93"><a href="/goods/5132780"
                        class="css-10nxrmy e1tjwjt92"><img
                            src="https://img-cf.kurly.com/cdn-cgi/image/width=60,format=auto/shop/data/goods/1650348343574l0.jpg"
                            class="css-68s41j e1tjwjt90"></a></li>
                <li class="css-1vgyrcu e1tjwjt93"><a href="/goods/5068043"
                        class="css-10nxrmy e1tjwjt92"><img
                            src="https://img-cf.kurly.com/cdn-cgi/image/width=60,format=auto/shop/data/goods/1614941754247l0.jpg"
                            class="css-68s41j e1tjwjt90"></a></li>
                <li class="css-1vgyrcu e1tjwjt93"><a href="/goods/5093420"
                        class="css-10nxrmy e1tjwjt92"><img
                            src="https://img-cf.kurly.com/cdn-cgi/image/width=60,format=auto/shop/data/goods/1637923991478l0.jpg"
                            class="css-68s41j e1tjwjt90"></a></li>
                <li class="css-1vgyrcu e1tjwjt93"><a href="/goods/5041882"
                        class="css-10nxrmy e1tjwjt92"><img
                            src="https://img-cf.kurly.com/cdn-cgi/image/width=60,format=auto/shop/data/goods/1573203203592l0.jpg"
                            class="css-68s41j e1tjwjt90"></a></li>
                <li class="css-1vgyrcu e1tjwjt93"><a href="/goods/5069342"
                        class="css-10nxrmy e1tjwjt92"><img
                            src="https://img-cf.kurly.com/cdn-cgi/image/width=60,format=auto/shop/data/goods/1619073959649l0.jpg"
                            class="css-68s41j e1tjwjt90"></a></li>
                <li class="css-1vgyrcu e1tjwjt93"><a href="/goods/5125881"
                        class="css-10nxrmy e1tjwjt92"><img
                            src="https://img-cf.kurly.com/cdn-cgi/image/width=60,format=auto/shop/data/goods/16499051856l0.jpg"
                            class="css-68s41j e1tjwjt90"></a></li>
                <li class="css-1vgyrcu e1tjwjt93"><a href="/goods/5075636"
                        class="css-10nxrmy e1tjwjt92"><img
                            src="https://img-cf.kurly.com/cdn-cgi/image/width=60,format=auto/shop/data/goods/1653034847487l0.jpeg"
                            class="css-68s41j e1tjwjt90"></a></li>
                <li class="css-1vgyrcu e1tjwjt93"><a href="/goods/5005164"
                        class="css-10nxrmy e1tjwjt92"><img
                            src="https://img-cf.kurly.com/cdn-cgi/image/width=60,format=auto/shop/data/goods/1590727808213l0.jpg"
                            class="css-68s41j e1tjwjt90"></a></li>
                <li class="css-1vgyrcu e1tjwjt93"><a href="/goods/5053774"
                        class="css-10nxrmy e1tjwjt92"><img
                            src="https://img-cf.kurly.com/cdn-cgi/image/width=60,format=auto/shop/data/goods/1601358350988l0.jpg"
                            class="css-68s41j e1tjwjt90"></a></li>
                <li class="css-1vgyrcu e1tjwjt93"><a href="/goods/5042152"
                        class="css-10nxrmy e1tjwjt92"><img
                            src="https://img-cf.kurly.com/cdn-cgi/image/width=60,format=auto/shop/data/goods/1570437357849l0.jpg"
                            class="css-68s41j e1tjwjt90"></a></li>
                <li class="css-1vgyrcu e1tjwjt93"><a href="/goods/1000027464"
                        class="css-10nxrmy e1tjwjt92"><img
                            src="https://product-image.kurly.com/cdn-cgi/image/width=60,format=auto/product/image/296b39e0-e479-44e6-ae3c-7ba3de7172f1.jpg"
                            class="css-68s41j e1tjwjt90"></a></li>
                <li class="css-1vgyrcu e1tjwjt93"><a href="/goods/5148638"
                        class="css-10nxrmy e1tjwjt92"><img
                            src="https://img-cf.kurly.com/cdn-cgi/image/width=60,format=auto/shop/data/goods/1656433816865l0.jpg"
                            class="css-68s41j e1tjwjt90"></a></li>
                <li class="css-1vgyrcu e1tjwjt93"><a href="/goods/5127265"
                        class="css-10nxrmy e1tjwjt92"><img
                            src="https://img-cf.kurly.com/cdn-cgi/image/width=60,format=auto/shop/data/goods/1652072424404l0.jpg"
                            class="css-68s41j e1tjwjt90"></a></li>
                <li class="css-1vgyrcu e1tjwjt93"><a href="/goods/5152707"
                        class="css-10nxrmy e1tjwjt92"><img
                            src="https://product-image.kurly.com/cdn-cgi/image/width=60,format=auto/product/image/57ea8004-327e-48e9-a731-845828cb2872.jpg"
                            class="css-68s41j e1tjwjt90"></a></li>
                <li class="css-1vgyrcu e1tjwjt93"><a href="/goods/5131835"
                        class="css-10nxrmy e1tjwjt92"><img
                            src="https://img-cf.kurly.com/cdn-cgi/image/width=60,format=auto/shop/data/goods/1651201165754l0.jpg"
                            class="css-68s41j e1tjwjt90"></a></li> -->
                
            </ul>
        </div>
        <button  onclick="scrollWin(0, 50)" class="css-1klnrae e1tjwjt91"></button>
    </div>
</nav>
<!-- <script src="/resources/js/dg/rightItem.js"></script> -->
<script>
function scrollWin(x, y) {
	const e1tjwjt95 = document.getElementById("e1tjwjt95");
	
	e1tjwjt95.scrollBy(x, y);
}
</script>
</body>
</html>