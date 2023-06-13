<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<div id="page-wrapper">
    <div class="header">
        <h1 class="page-header">
            쿠폰 관리
        </h1>
    </div>
    <div id="page-inner">
        <div class="row">
            <div class="col-lg-6">
                <div class="card">
                    <div class="card-action">
                        쿠폰 발행
                    </div>
                    <div class="card-content">
                        <form id="register_form" enctype="multipart/form-data" method="post" action="/coupon/registerImpl">
                                <div class="row">
                                    <div class="input-field col s8">
                                        <input id="icon_prefix" name="memberId" type="number" class="validate">
                                        <label for="icon_prefix">회원 번호</label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="input-field col s12">
                                        <input id="num" name="num" type="number" class="validate">
                                        <label for="num" data-error="wrong" data-success="right">쿠폰 코드번호</label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="input-field col s6">
                                        <input id="amount" name="amount" type="number" class="validate">
                                        <label for="amount" data-error="wrong" data-success="right">할인금액</label>
                                    </div>
                                    <div class="input-field col s3"><span style="font-size: 6px; color: #00897b;">시작월</span>
                                        <input id="monthStart" type="month" class="validate">
                                        <label for="monthStart" data-error="wrong" data-success="right"></label>
                                    </div>
                                    <div class="input-field col s3"><span style="font-size: 6px; color: #00897b;">만료월</span>
                                        <input id="monthEnd" type="month" class="validate">
                                        <label for="monthEnd" data-error="wrong" data-success="right"></label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="input-field col s12">
                                        <textarea id="textarea" class="materialize-textarea"></textarea>
                                        <label for="textarea">제공 사유</label>
                                    </div>
                                </div>
                            <div class="clearBoth"></div>
                            <div class="modal-footer">
                                <input type="submit" class="btn btn-default" value="Register"></input>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <!--   Basic Table  -->
                <div class="card">
                    <div class="card-action">
                        쿠폰 제공 현황 / 삭제
                    </div>
                    <div class="card-content">
                        <div class="table-responsive">
                            <form class="col s12" action="/coupon/findimpl" method="get">
                                <div class="row">
                                    <input type="hidden" name="keyword1" value="id">
                                    <input type="hidden" name="keyword2" value="num">
                                    <input type="hidden" name="keyword3" value="amount">
                                    <div class="input-field col s3">
                                        <span style="color: #00897b;">회원번호</span>
                                        <input type="number"  name="search1" <c:if test="${value1 != ''}">value="${value1}"</c:if>>
                                    </div>
                                    <div class="input-field col s3">
                                        <span style="color: #00897b;">쿠폰코드</span>
                                        <input type="number"  name="search2" <c:if test="${value2 != ''}">value="${value2}"</c:if>>
                                    </div>
                                    <div class="input-field col s6">
                                        <span style="color: #00897b;">할인금액(Max)</span>
                                        <input type="number"  name="search3" <c:if test="${value3 != ''}">value="${value3}"</c:if>>
                                    </div>
                                    <div class="modal-footer">
                                        <input type="submit" class="btn btn-default" value="Search"></input>
                                    </div>
                                </div>
                            </form>
                            <table class="table">
                                <thead>
                                <tr>
                                    <th>#</th>
                                    <th>회원 번호</th>
                                    <th>쿠폰 코드</th>
                                    <th>할인 금액</th>
                                    <th>Check</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="obj" items="${cpage.getList()}">
                                    <tr>
                                        <td>${obj.id}</td>
                                        <td>${obj.memberId}</td>
                                        <td>${obj.num}</td>
                                        <td>${obj.amount}</td>
                                        <td>
                                            <p>
                                                <input type="checkbox" id="indeterminate-checkbox-${obj.id}" value="${obj.id}" />
                                                <label for="indeterminate-checkbox-${obj.id}"></label>
                                            </p>
                                        </td>
                                    </tr>
                                </c:forEach>

<%--                                <c:forEach var="obj" items="${coupons}">--%>
<%--                                <tr>--%>
<%--                                    <td>${obj.id}</td>--%>
<%--                                    <td>${obj.memberId}</td>--%>
<%--                                    <td>${obj.num}</td>--%>
<%--                                    <td>${obj.amount}</td>--%>
<%--                                    <td>--%>
<%--                                    <p>--%>
<%--                                        <input type="checkbox" id="indeterminate-checkbox-${obj.id}" value="${obj.id}" />--%>
<%--                                        <label for="indeterminate-checkbox-${obj.id}"></label>--%>
<%--                                    </p>--%>
<%--                                    </td>--%>
<%--                                </tr>--%>
<%--                                </c:forEach>--%>
                                </tbody>
                            </table>
                            <c:if test="${cpage.getList() == null}">
                                <h4 style="color: red; font-size: 15px; text-align: center;">검색 조건을 입력하세요</h4>
                            </c:if>
                            <div class="pagingbar">
                                <jsp:include page="../findpage.jsp"/>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button class="waves-effect waves-light btn" type="button" class="btn btn-default" onclick="deleteSelectedCoupon()">Delete</button>
                        </div>
                    </div>
                </div>
                <!-- End  Basic Table  -->
        </div>
        <!-- /. ROW  -->
    </div>
    <!-- /. PAGE INNER  -->
</div>
<!-- /. PAGE WRAPPER -->
<!-- /. WRAPPER -->
<!-- JS Scripts-->
</div>

<script>
    function deleteSelectedCoupon() {
        var checkboxes = document.querySelectorAll('input[type="checkbox"]:checked');
        var couponIds = Array.from(checkboxes).map(function(checkbox) {
            return parseInt(checkbox.value);
        });

        if (couponIds.length > 0) {
            var confirmation = confirm("선택한 쿠폰을 삭제하시겠습니까?");
            if (confirmation) {
                var url = "/coupon/deleteimpl?";
                couponIds.forEach(function(id, index) {
                    if (index > 0) {
                        url += "&";
                    }
                    url += "id=" + encodeURIComponent(id);
                });
                location.href = url;
            }
        } else {
            alert("삭제할 쿠폰을 선택해주세요");
        }
    }

</script>

<style>
    .pagingbar {
        display: flex;
        justify-content: center;
    }
</style>