<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div id="page-wrapper">
  <div class="header">
    <h1 class="page-header">
      Error Page <small>아래 메세지를 참고하여 전산실에 문의하세요</small>
    </h1>
  </div>
  <div id="page-inner">

    <div class="row">

      <div class="col-md-12">
        <div class="card">
          <div class="card-content">
            <p>${msg}</p>
            <div class="clearBoth"><br/></div>

          </div>
        </div>
      </div>
      <!-- /. PAGE INNER  -->
    </div>

  </div>
</div>