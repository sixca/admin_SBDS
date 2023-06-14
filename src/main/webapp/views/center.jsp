<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<div id="page-wrapper">
    <div class="header">
        <h1 class="page-header">
            Dashboard
        </h1>
        <ol class="breadcrumb">
            <li><a href="/">Home</a></li>
            <li><a href="/matchdash">Match</a></li>
            <li><a href="/malldash">Mall</a></li>
        </ol>

    </div>
    <div id="page-inner">

        <div class="row">

            <div class="col-md-12">
                <div class="card">
                    <div class="card-action">
                        메인 DashBoard
                    </div>
                    <div class="card-content">
                        <p>관리자 일정 캘린더 / 날씨 / 신규회원 증감 추이 그래프 / 사무실 위치(본점, 지점, 물류)
                        </p>
                        <div class="clearBoth"><br/></div>

                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 col-sm-6">
                    <div class="card">
                        <div class="card-action">
                            Basic Tabs
                        </div>
                        <div class="card-content">
                            <ul class="collapsible" data-collapsible="accordion">
                                <li>
                                    <div class="collapsible-header"><i class="material-icons">filter_drama</i>First
                                    </div>
                                    <div class="collapsible-body"><p>Tt enim ad minim veniam, quis nostrud exercitation
                                        ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor
                                        in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla
                                        pariatur..</p></div>
                                </li>
                                <li>
                                    <div class="collapsible-header"><i class="material-icons">place</i>Second</div>
                                    <div class="collapsible-body"><p>Dolor sit amet, consectetur adipisicing elit, sed
                                        do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
                                        veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
                                        consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum
                                        dolore eu fugiat nulla pariatur.</p></div>
                                </li>
                                <li>
                                    <div class="collapsible-header"><i class="material-icons">whatshot</i>Third</div>
                                    <div class="collapsible-body"><p>Sit amet, consectetur adipisicing elit, sed do
                                        eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
                                        veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
                                        consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum
                                        dolore eu fugiat nulla pariatur.</p></div>
                                </li>
                            </ul>

                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-sm-6">
                    <div class="card">
                        <div class="card-action">
                            Tabs
                        </div>
                        <div class="card-content">
                            <div class="col">
                                <ul class="tabs">
                                    <li class="tab col s3"><a href="#test1">Test 1</a></li>
                                    <li class="tab col s3"><a class="active" href="#test2">Test 2</a></li>
                                    <li class="tab col s3 disabled"><a href="#test3">Disabled Tab</a></li>
                                    <li class="tab col s3"><a href="#test4">Test 4</a></li>
                                </ul>
                            </div>
                            <div class="clearBoth"><br/></div>
                            <div id="test1" class="col s12"><p>Dolor sit amet, consectetur adipisicing elit, sed do
                                eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
                                quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis
                                aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla
                                pariatur.</p></div>
                            <div id="test2" class="col s12"><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
                                sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
                                veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
                                consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore
                                eu fugiat nulla pariatur.</p></div>
                            <div id="test3" class="col s12"><p>Bpsum dolor sit amet, consectetur adipisicing elit, sed
                                do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
                                quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis
                                aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla
                                pariatur.</p></div>
                            <div id="test4" class="col s12"><p>Consectetur adipisicing elit, sed do eiusmod tempor
                                incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
                                exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure
                                dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla
                                pariatur.</p></div>
                            <div class="clearBoth"><br/></div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /. PAGE INNER  -->
        </div>

    </div>
</div>
<!-- /. PAGE WRAPPER  -->
