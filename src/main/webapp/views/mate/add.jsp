<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script>
    function readImage(input) {
        // 인풋 태그에 파일이 있는 경우
        if(input.files && input.files[0]) {

            // FileReader 인스턴스 생성
            const reader = new FileReader()
            // 이미지가 로드가 된 경우
            reader.onload = e => {
                const previewImage = document.getElementById("preview")
                previewImage.src = e.target.result
            }
            // reader가 이미지 읽도록 하기
            reader.readAsDataURL(input.files[0])
        }
    }
    $(function () {
        $('#preview').attr("src", "https://cdn-mart.baemin.com/front-end/assets/20230512084027/images/defaultEmptyImage.11f8bc33139d72b546eb54f5b89e2abf.png");
        $('#imgmate').on("change", e => {
            readImage(e.target)
        })
    });
</script>
<div id="page-wrapper">
    <div id="page-inner">
        <div class="row">
            <form id="register_form" enctype="multipart/form-data" method="post" action="/mate/addimpl">
                <div class="col-lg-6">
                <div class="card">
                    <div class="card-action">
                        간병인 신규 등록
                    </div>
                    <div class="card-content">
<%--                        <form class="col s12">--%>
                            <div class="row">
                                <div class="input-field col s6">
                                    <i class="material-icons prefix">account_circle</i>
                                    <input id="icon_prefix" name="name" type="text" class="validate">
                                    <label for="icon_prefix">Full Name</label>
                                </div>
                                <div class="input-field col s6">
                                    <i class="material-icons prefix">mail</i>
                                    <input id="icon_mail" name="email" type="email" class="validate">
                                    <label for="icon_mail">mail</label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="input-field col s12">
                                    <input id="password" name="password" type="password" placeholder="특수문자를 포함한 8자리 이상" class="validate">
                                    <label for="password" data-error="wrong" data-success="right">Password</label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="input-field col s12">
                                    <input id="password2" type="password" placeholder="Password 확인" class="validate">
                                    <label for="password2" data-error="wrong" data-success="right">Password - Check</label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="input-field col s12">
                                    <input id="area" name="area" type="text" placeholder="시/군/구" class="validate">
                                    <label for="area" data-error="wrong" data-success="right">지역</label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="input-field col s12">
                                    <input id="jobPeriod" name="jobPeriod" type="number" placeholder="년차를 숫자만 입력" class="validate">
                                    <label for="jobPeriod" data-error="wrong" data-success="right">경력</label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="input-field col s12">
                                    <input id="license" name="license" type="text" class="validate">
                                    <label for="license" data-error="wrong" data-success="right">자격증</label>
                                </div>
                            </div>
<%--                        </form>--%>
                        <div class="clearBoth">
                            <button class="waves-effect waves-light btn" type="submit" id="register_btn">등록</button>
                            <a href="/mate/all" class="waves-effect waves-light btn">뒤로가기</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4 col-sm-4">
                <div class="card">
                    <div class="card-image waves-effect waves-block waves-light">
<%--                        <img class="activator" src="http://materializecss.com/images/office.jpg">--%>
                        <input class="d-none mt-5 ml-5" type="file" name="imgMate" style="display: none" id="imgmate">
                        <a href="javascript:void(0);" onclick="$('#imgmate').trigger('click')">
                            <img src="/uimg/${mate.img}" id="preview" style="height: 500px; width: 500px">
                        </a>
                    </div>
                    <div class="card-content">
                            <span class="card-title activator grey-text text-darken-4">Preview</span>
                    </div>
                    <div class="card-reveal">
                        <span class="card-title grey-text text-darken-4">Preview<i
                                class="material-icons right">close</i></span>
                        <p>회원들에게 노출되는 간병인의 프로필 사진 미리보기입니다.</p>
                        <p>**필수적으로 등록해주세요**</p>
                    </div>
                </div>
            </div>
            </form>
        </div>
        <!-- /.col-lg-12 -->
    </div>
    <!-- /. PAGE INNER  -->
</div>