﻿<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<div id="page-wrapper">
    <div class="header">
        <h1 class="page-header">
            후기 관리
        </h1>
        <ol class="breadcrumb">
            <li><a href="/matereview/all">간병인 후기</a></li>
            <li><a href="/itemreview/all">상품 후기</a></li>
        </ol>
    </div>

    <div id="page-inner">

        <div class="row">
            <div class="col-md-12">
                <!-- Advanced Tables -->
                <div class="card">
                    <div class="card-action">
                        제품 후기 리스트
                    </div>
                    <div class="card-content">
                        <div class="table-responsive">
                            <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                <thead>
                                <tr>
                                    <th class="center">후기 번호</th>
                                    <th class="center">회원 번호</th>
                                    <th class="center">제품 번호</th>
                                    <th class="center">제목</th>
                                    <th class="center">평점</th>
                                </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="obj" items="${ilist}">
                                        <tr>
                                            <td>${obj.id}</td>
                                            <td><a href="/member/detail?id=${obj.memberId}">${obj.memberId}</a></td>
                                            <td><a href="/item/${obj.itemId}">${obj.itemId}</a></td>
                                            <td><a href="/itemreview/detail?id=${obj.id}">${obj.title}</a></td>
                                            <td>${obj.rate}</td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <!--End Advanced Tables -->
            </div>
        </div>
    </div>
    <!-- /. PAGE INNER  -->
</div>
<!-- /. PAGE WRAPPER -->
<!-- /. WRAPPER -->
<!-- JS Scripts-->


<script>
    $(document).ready(function () {
        $('#dataTables-example').dataTable();
    });
</script>
<style>
    .small_img {
        max-width: 50px;
        max-height: 50px;
    }

    td {
        text-align: center;
    }
</style>
