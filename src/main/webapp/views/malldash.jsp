<div id="page-wrapper">
    <div class="header">
        <h1 class="page-header">
            Mall Dashboard
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
                        <div class="card-image blue">
                            <i class="material-icons dp48">trending_up</i>
                        </div>
                        <div class="card-stacked blue">
                            <div class="card-content">
                                <h3>3,400,500원</h3>
                            </div>
                            <div class="card-action">
                                <strong>매출</strong>
                            </div>
                        </div>
                    </div>

                </div>
                <div class="col-xs-12 col-sm-6 col-md-3">

                    <div class="card horizontal cardIcon waves-effect waves-dark">
                        <div class="card-image blue">
                            <i class="material-icons dp48">shopping_cart</i>
                        </div>
                        <div class="card-stacked blue">
                            <div class="card-content">
                                <h3>40건</h3>
                            </div>
                            <div class="card-action">
                                <strong>주문</strong>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-6 col-md-3">

                    <div class="card horizontal cardIcon waves-effect waves-dark">
                        <div class="card-image blue">
                            <i class="material-icons dp48">loyalty</i>
                        </div>
                        <div class="card-stacked blue">
                            <div class="card-content">
                                <h3>865건</h3>
                            </div>
                            <div class="card-action">
                                <strong>찜</strong>
                            </div>
                        </div>
                    </div>

                </div>
                <div class="col-xs-12 col-sm-6 col-md-3">

                    <div class="card horizontal cardIcon waves-effect waves-dark">
                        <div class="card-image blue">
                            <i class="material-icons dp48">supervisor_account</i>
                        </div>
                        <div class="card-stacked blue">
                            <div class="card-content">
                                <h3>121건</h3>
                            </div>
                            <div class="card-action">
                                <strong>후기</strong>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <!-- /. ROW  -->
        <div class="row">
            <div class="col-md-7">
                <div class="card" style="height:100%;">
                    <div class="card-image">
                        <div id="morris-line-chart" style="height:100%;"></div>
                    </div>
                    <div class="card-action">
                        <b>실시간 Cart 금액 & 주문 금액 비교</b>
                    </div>
                </div>
            </div><!--/.row-->
            <div class="col-md-5">
                <div class="card" style="height:100%;">
                    <div class="card-image donutpad">
                        <div id="morris-donut-chart" style="height:282px;"></div>
                    </div>
                    <div class="card-action">
                        <b>연령대 별 판매비율</b>
                    </div>
                </div>
            </div><!--/.row-->
        </div>


        <div id="morris-bar-chart" style="display: none;"></div>
        <div id="morris-area-chart" style="display: none;"></div>

        <div class="row">
            <div class="col-md-12">

            </div>
        </div>
        <!-- /. ROW  -->


        <div class="row">
            <div class="col-md-4 col-sm-12 col-xs-12">
                <div class="card">
                    <div class="card-action">
                        <b>발행 쿠폰 현황</b>
                    </div>
                    <div class="card-image">
                        <div class="collection">
                            <a href="#!" class="collection-item">ㅇㅇㅇ<span class="new badge red"
                                                                          data-badge-caption="red">4개</span></a>
                            <a href="#!" class="collection-item">Blue<span class="new badge blue"
                                                                           data-badge-caption="blue">4</span></a>
                            <a href="#!" class="collection-item"><span class="badge">12개</span>12355</a>
                            <a href="#!" class="collection-item"><span class="new badge">4</span>Alan</a>
                            <a href="#!" class="collection-item">Alan<span class="new badge blue"
                                                                           data-badge-caption="blue">4</span></a>
                            <a href="#!" class="collection-item"><span class="badge">14</span>Alan</a>
                            <a href="#!" class="collection-item">Custom Badge Captions<span class="new badge"
                                                                                            data-badge-caption="custom caption">4</span></a>
                            <a href="#!" class="collection-item">Custom Badge Captions<span class="badge"
                                                                                            data-badge-caption="custom caption">4</span></a>
                        </div>
                    </div>

                </div>

            </div>
            <div class="col-md-8 col-sm-12 col-xs-12">
                <div class="card">
                    <div class="card-action">
                        <b>구매금액 최다 회원 TOP 4</b>
                    </div>
                    <div class="card-image">
                        <ul class="collection">
                            <li class="collection-item avatar">
                                <i class="material-icons circle green">track_changes</i>
                                <span class="title">김마루</span>
                                <p>누적 구매 금액 : 12,515,000원 <br>
                                    누적 구입 건수 : 34건
                                </p>
                                <a href="#!" class="secondary-content"><i class="material-icons">grade</i></a>
                            </li>
                            <li class="collection-item avatar">
                                <i class="material-icons circle green">track_changes</i>
                                <span class="title">권만호</span>
                                <p>누적 구매 금액 : 9,205,000원 <br>
                                    누적 구입 건수 : 20건
                                </p>
                                <a href="#!" class="secondary-content"><i class="material-icons">grade</i></a>
                            </li>
                            <li class="collection-item avatar">
                                <i class="material-icons circle green">track_changes</i>
                                <span class="title">황사랑</span>
                                <p>누적 구매 금액 : 7,500,000원 <br>
                                    누적 구입 건수 : 4건
                                </p>
                                <a href="#!" class="secondary-content"><i class="material-icons">grade</i></a>
                            </li>
                            <li class="collection-item avatar">
                                <i class="material-icons circle green">track_changes</i>
                                <span class="title">박선생</span>
                                <p>누적 구매 금액 : 4,205,000원 <br>
                                    누적 구입 건수 : 12건
                                </p>
                                <a href="#!" class="secondary-content"><i class="material-icons">grade</i></a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

    </div>
    <!-- /. PAGE INNER  -->
        </div>
