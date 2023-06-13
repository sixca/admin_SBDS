<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<!-- pagination start -->
<div class="col text-center">
  <ul class="pagination ">
    <c:choose>
      <c:when test="${cpage.getPrePage() != 0}">
        <li>
<%--          <a href="/${target}/findimpl?pageNo=${cpage.getPrePage()}&keyword1=id&search1=${search.search1}&keyword2=name&search2=${search.search2}">Previous</a>--%>
          <a href="/${target}/findimpl?pageNo=${cpage.getPrePage()}&keyword1=id&search1=${search.search1}&&keyword2=name&search2=${search.search2}&&keyword3=name&search3=${search.search3}">Previous</a>
        </li>
      </c:when>
      <c:otherwise>
        <li class="disabled">
          <a href="#">Previous</a>
        </li>
      </c:otherwise>
    </c:choose>

    <c:forEach begin="${cpage.getNavigateFirstPage() }" end="${cpage.getNavigateLastPage() }" var="page">
      <c:choose>
        <c:when test="${cpage.getPageNum() == page}">
          <li class="active">
            <a  href="/${target}/findimpl?pageNo=${page}&keyword1=id&search1=${search.search1}&&keyword2=name&search2=${search.search2}&&keyword3=name&search3=${search.search3}">${page }</a>
          </li>
        </c:when>
        <c:otherwise>
          <li>
            <a href="/${target}/findimpl?pageNo=${page}&keyword1=id&search1=${search.search1}&&keyword2=name&search2=${search.search2}&&keyword3=name&search3=${search.search3}">${page }</a>
          </li>
        </c:otherwise>
      </c:choose>

    </c:forEach>
    <c:choose>
      <c:when test="${cpage.getNextPage() != 0}">
        <li>
          <a href="/${target}/findimpl?pageNo=${cpage.getNextPage()}&keyword1=id&search1=${search.search1}&&keyword2=name&search2=${search.search2}&&keyword3=name&search3=${search.search3}">Next</a>
        </li>
      </c:when>
      <c:otherwise>
        <li class="disabled">
          <a href="#">Next</a>
        </li>
      </c:otherwise>
    </c:choose>

  </ul>
</div>
<!-- pagination end -->

<style>
  .pagination li a {
    color: #00897b; /* 페이지네이션 링크의 색상 */
    background-color: white; /* 페이지네이션 링크의 배경색 */
  }

  .pagination li.active a {
    color: white; /* 활성화된 페이지네이션 링크의 색상 */
    background-color: #00897b; /* 활성화된 페이지네이션 링크의 배경색 */
  }

  .pagination li.disabled a {
    color: gray; /* 비활성화된 페이지네이션 링크의 색상 */
    background-color: lightgray; /* 비활성화된 페이지네이션 링크의 배경색 */
  }
</style>
