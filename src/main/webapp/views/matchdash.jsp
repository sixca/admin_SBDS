<div id="page-wrapper">
    <div class="header">
        <h1 class="page-header">
            Match Dashboard
        </h1>
        <ol class="breadcrumb">
            <li><a href="/">Home</a></li>
            <li><a href="/matchdash">Match</a></li>
            <li><a href="/malldash">Mall</a></li>
        </ol>
    </div>
    <div id="page-inner">

        <div class="dashboard-cards">
            <div class="row">
                <div class="col-xs-12 col-sm-6 col-md-3">

                    <div class="card horizontal cardIcon waves-effect waves-dark">
                        <div class="card-image green">
                            <i class="material-icons dp48">recent_actors
                            </i>
                        </div>
                        <div class="card-stacked green">
                            <div class="card-content">
                                <h3>84건</h3>
                            </div>
                            <div class="card-action">
                                <strong>실시간 매칭</strong>
                            </div>
                        </div>
                    </div>

                </div>
                <div class="col-xs-12 col-sm-6 col-md-3">

                    <div class="card horizontal cardIcon waves-effect waves-dark">
                        <div class="card-image green">
                            <i class="material-icons dp48">offline_pin</i>
                        </div>
                        <div class="card-stacked green">
                            <div class="card-content">
                                <h3>36%</h3>
                            </div>
                            <div class="card-action">
                                <strong>매칭완료율</strong>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-6 col-md-3">

                    <div class="card horizontal cardIcon waves-effect waves-dark">
                        <div class="card-image green">
                            <i class="material-icons dp48">perm_contact_calendar</i>
                        </div>
                        <div class="card-stacked green">
                            <div class="card-content">
                                <h3>225명</h3>
                            </div>
                            <div class="card-action">
                                <strong>활동 간병인 현황</strong>
                            </div>
                        </div>
                    </div>

                </div>
                <div class="col-xs-12 col-sm-6 col-md-3">

                    <div class="card horizontal cardIcon waves-effect waves-dark">
                        <div class="card-image green">
                            <i class="material-icons dp48">supervisor_account</i>
                        </div>
                        <div class="card-stacked green">
                            <div class="card-content">
                                <h3>8,658명</h3>
                            </div>
                            <div class="card-action">
                                <strong>누적 회원 현황</strong>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- /. ROW  -->

        <div id="morris-donut-chart" style="display: none;"></div>

        <div class="row">
            <div class="col-md-5">
                <div class="card">
                    <div class="card-image">
                        <div id="morris-line-chart"></div>
                    </div>
                    <div class="card-action">
                        <b>매칭신청 대비 유효 간병인 </b>
                    </div>
                </div>

            </div>

            <div class="col-md-7">
                <div class="card">
                    <div class="card-image">
                        <div id="morris-bar-chart"></div>
                    </div>
                    <div class="card-action">
                        <b> 성별별 매칭 신청 수요 변화</b>
                    </div>
                </div>
            </div>

        </div>



                        <div id="morris-area-chart" style="display: none;"></div>

        <div class="row">
            <div class="col-md-12">

            </div>
        </div>
        <!-- /. ROW  -->


        <div class="row">
            <div class="col-md-6">
                <!--    Hover Rows  -->
                <div class="card">
                    <div class="card-action">
                        Best 간병인 순위
                    </div>
                    <div class="card-content">
                        <div class="table-responsive">
                            <table class="table table-hover">
                                <thead>
                                <tr>
                                    <th>#</th>
                                    <th>이름</th>
                                    <th>매칭 수</th>
                                    <th>평점</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>Mark</td>
                                    <td>34</td>
                                    <td>5</td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>Jacob</td>
                                    <td>28</td>
                                    <td>4.8</td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>Larry</td>
                                    <td>25</td>
                                    <td>4.7</td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <!-- End  Hover Rows  -->
            </div>
            <div class="col-md-6">
                <!--    Hover Rows  -->
                <div class="card">
                    <div class="card-action">
                        Worst 간병인 순위
                    </div>
                    <div class="card-content">
                        <div class="table-responsive">
                            <table class="table table-hover">
                                <thead>
                                <tr>
                                    <th>#</th>
                                    <th>이름</th>
                                    <th>매칭 수</th>
                                    <th>평점</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>Mark</td>
                                    <td>3</td>
                                    <td>0</td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>Jacob</td>
                                    <td>5</td>
                                    <td>0.8</td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>Larry</td>
                                    <td>4</td>
                                    <td>1</td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <!-- End  Hover Rows2  -->
            </div>
        </div>

    </div>
    <!-- /. PAGE INNER  -->
</div>
