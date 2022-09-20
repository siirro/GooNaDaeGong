<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>



        <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="../manager">
                <!-- <div class="sidebar-brand-icon">
                    <i class="fa fa-mobile"></i>
                </div> -->
                <div class="sidebar-brand-text mx-3">
                    <!-- <img src="/resources/images/managerboot/logo.jpg" alt="" 
                    style="width: 60%; height: 60%;"> -->
                    구디나라
                    <sup>관리자센터</sup></div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            <div class="sidebar-heading">
                MALL
            </div>

            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo"
                    aria-expanded="true" aria-controls="collapseTwo">
                    <i class="fas fa-fw fa-shopping-bag"></i>
                    <span>상품관리</span>
                </a>
                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">뭘넣어야되지</h6>
                        <a class="collapse-item" href="../manager/itemadd">상품등록</a>
                        <a class="collapse-item" href="../mamager/itemlist">상품조회</a>
                        <a class="collapse-item" href="../manager/itemstock">재고관리</a>
                        <a class="collapse-item" href="../manager/itemreview">리뷰관리</a>
                    </div>
                </div>
            </li>

            <!-- Nav Item - Utilities Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities"
                    aria-expanded="true" aria-controls="collapseUtilities">
                    <i class="fas fa-fw fa-chart-line"></i>
                    <span>판매관리</span>
                </a>
                <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities"
                    data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Custom Utilities:</h6>
                        <a class="collapse-item" href="utilities-color.html">회원주문내역</a>
                        <a class="collapse-item" href="utilities-border.html">배송관리</a>
                        <a class="collapse-item" href="utilities-animation.html">Animations</a>
                    </div>
                </div>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            <div class="sidebar-heading">
                MEMBER
            </div>

            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages"
                    aria-expanded="true" aria-controls="collapsePages">
                    <i class="fas fa-fw fa-user"></i>
                    <span>회원</span>
                </a>
                <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">MEMBER</h6>
                        <a class="collapse-item" href="./manager/member/list">회원조회</a>

                        <div class="collapse-divider"></div>
                        
                    </div>
                </div>
            </li>

            <!-- Nav Item - Utilities Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseReport"
                    aria-expanded="true" aria-controls="collapseUtilities">
                    <i class="fas fa-fw fa-flag"></i>
                    <span>신고</span>
                </a>
                <div id="collapseReport" class="collapse" aria-labelledby="headingUtilities"
                    data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <a class="collapse-item" href="utilities-color.html">신고조회</a>
                        <a class="collapse-item" href="utilities-border.html">신고처리</a>
                    </div>
                </div>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider my-2">


            <!-- Nav Item - Charts -->
            <li class="nav-item">
                <a class="nav-link" href="../manager/qna">
                    <i class="fas fa-fw fa-comment"></i>
                    <span>1대1 문의</span></a>
            </li>


            <!-- Divider -->
            <hr class="sidebar-divider d-none d-md-block">

            <!-- 지우세요 -->
            
            <!-- Heading -->
            <div class="sidebar-heading">
                MEMBER
            </div>

            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsegg"
                    aria-expanded="true" aria-controls="collapsePages">
                    <i class="fas fa-fw fa-user"></i>
                    <span>템플릿 나눔</span>
                </a>
                <div id="collapsegg" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <a class="collapse-item" href="/resources/vendor/buttons.html">버튼모음</a>
                        <a class="collapse-item" href="/resources/vendor/tables.html">테이블모음</a>
                        <a class="collapse-item" href="/resources/vendor/cards.html">카드</a>
                        <a class="collapse-item" href="/resources/vendor/register.html">회원가입</a>
                        <a class="collapse-item" href="/resources/vendor/forgot-password.html">비번찾기</a>
                        <a class="collapse-item" href="/resources/vendor/login.html">로긴</a>
                        <a class="collapse-item" href="/resources/vendor/404.html">404</a>

                        <a class="collapse-item" href="/resources/vendor/utilities-color.html">유틸-컬러</a>
                        <a class="collapse-item" href="/resources/vendor/utilities-border.html">유틸-보더</a>
                        <a class="collapse-item" href="/resources/vendor/utilities-animation.html">유틸-움직</a>
                        <a class="collapse-item" href="/resources/vendor/utilities-other.html">유틸-기타</a>
                        <div class="collapse-divider"></div>
                        
                    </div>
                </div>
            </li>
            <!-- 지우세요 -->

            <!-- Sidebar Toggler (Sidebar) -->
            <div class="text-center d-none d-md-inline">
                <button class="rounded-circle border-0" id="sidebarToggle"></button>
            </div>

        </ul>
        <!-- End of Sidebar -->