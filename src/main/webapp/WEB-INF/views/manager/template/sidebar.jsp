<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>



        <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="../../manager">
                <!-- <div class="sidebar-brand-icon">
                    <i class="fa fa-mobile"></i>
                </div> -->
                <div class="sidebar-brand-text mx-3">
                    <!-- <img src="/resources/images/manager/logo.jpg" alt="" 
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
                        <a class="collapse-item" href="../../item/add">상품등록</a>
                        <a class="collapse-item" href="../../manager/item/list">상품조회</a>
                        
                        <!-- <a class="collapse-item" href="../manager/item/review">리뷰관리</a> -->
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
                        
                        <a class="collapse-item" href="../../manager/mall/order">주문내역</a>
                        <a class="collapse-item" href="../../manager/mall/payment">결제관리</a>
                        <h6 class="collapse-header">CS</h6>
                        <a class="collapse-item" href="../../manager/mall/cancel">주문취소</a>
                        <a class="collapse-item" href="../../manager/mall/exchange">교환관리</a>
                        <a class="collapse-item" href="../../manager/mall/refund">반품관리</a>
                        
                        
                        
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
                        <!-- <h6 class="collapse-header">MEMBER</h6> -->
                        <a class="collapse-item" href="../../manager/member/list">회원조회</a>
                        <a class="collapse-item" href="../../manager/qna/list">1대1 문의</a>
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
                        <a class="collapse-item" href="../../manager/report/list">신고조회</a>
                        <!-- <a class="collapse-item" href="../../manager/report/member">신고회원</a> -->
                    </div>
                </div>
            </li>

            <!-- 1대1문의 메뉴 따로뺼까? -->
            <!-- Divider -->
            <!-- <hr class="sidebar-divider">

            <div class="sidebar-heading">
                QNA
            </div>

            
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseQna"
                    aria-expanded="true" aria-controls="collapseQna">
                    <i class="fas fa-fw fa-comment"></i>
                    <span>1대1 문의</span>
                </a>
                <div id="collapseQna" class="collapse" aria-labelledby="headingQna"
                    data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <a class="collapse-item" href="../../manager/qna/list">1대1 문의</a>
                        <a class="collapse-item" href="../../manager/qna/list?code=2">쇼핑몰</a>
                    </div>
                </div> -->
            </li>
            <!-- 1대1문의 메뉴 따로뺼까? -->




            <!-- Sidebar Toggler (Sidebar) -->
            <div class="text-center d-none d-md-inline">
                <button class="rounded-circle border-0" id="sidebarToggle"></button>
            </div>

        </ul>
        <!-- End of Sidebar -->