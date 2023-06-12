﻿<script>
    function deleteReview() {
        location.href = "/matereview/deleteimpl?id=" + ${mreviewinfo.id};

    }
</script>

<div id="page-wrapper">
    <div class="header">
        <h1 class="page-header">
            간병인 후기 상세 <small>Mate Review Detail.</small>
        </h1>
    </div>
    <div id="page-inner">

        <div class="row">

            <div class="col-md-12">
                <div class="card">
                    <div class="card-action">
                        후기 내용
                    </div>
                    <div class="card-content">
                            <table class="table table-condensed">
                                <thead>
                                <tr align="center">
                                    <th width="10%">제목</th>
                                    <th width="60%">${mreviewinfo.content}</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>작성 회원 번호
                                    </td>
                                    <td>
                                        ${mreviewinfo.mateId}
                                    </td>
                                </tr>
                                <tr>
                                    <td>대상 간병인 번호
                                    </td>
                                    <td>
                                        ${mreviewinfo.memberId} <span style="float: right; font-weight: bold; color: blue;">평점 : ${mreviewinfo.rate}점</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <img src="/uimg/${mreviewinfo.img}" alt="ReviewPhoto" class="rounded-circle p-1 bg-primary" width="80" style="border-radius: 50%;">
                                    </td>
                                    <td colspan="2">
                                        <p>${mreviewinfo.content}</p>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                            <table id="commentTable" class="table table-condensed"></table>
                            <table class="table table-condensed">
                                <thead>
                                <tr>
                                    <td>
                                    <span style='float:right'>
                                        <input type="button" class="btn btn-primary px-4" value="Delete" onclick="deleteReview()">
                                        <a href="javascript:history.back()" class="btn btn-secondary px-4">Back</a>
                                    </span>
                                    </td>
                                </tr>
                                </thead>
                            </table>
                        <div class="clearBoth"><br/></div>
                    </div>
                </div>
            </div>
            <!-- /. PAGE INNER  -->
        </div>
    </div>
</div>
