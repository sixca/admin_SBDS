<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div id="page-wrapper">
    <div class="header">
        <h1 class="page-header">
            주문 관리
        </h1>
        <a href="/order/add" class="btn-floating btn-small right" style="margin-top: 20px;"><i class="material-icons">add</i></a>
    </div>
    <div id="page-inner">
        <div class="row">
            <div class="col-xl-12">
                <div class="card">
                    <div class="card-body">
                        <h5 class="header-title pb-3 mt-0">Payments</h5>
                        <div class="table-responsive">
                            <table class="table table-hover mb-0">
                                <thead>
                                <tr class="align-self-center">
                                    <th>Project Name</th>
                                    <th>Client Name</th>
                                    <th>Payment Type</th>
                                    <th>Paid Date</th>
                                    <th>Amount</th>
                                    <th>Transaction</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>Product Devlopment</td>
                                    <td><img src="https://bootdey.com/img/Content/avatar/avatar1.png" alt="" class="thumb-sm rounded-circle mr-2"> Kevin Heal</td>
                                    <td>Paypal</td>
                                    <td>5/8/2018</td>
                                    <td>$15,000</td>
                                    <td><span class="badge badge-boxed badge-soft-warning">panding</span></td>
                                </tr>
                                <tr>
                                    <td>New Office Building</td>
                                    <td><img src="https://bootdey.com/img/Content/avatar/avatar2.png" alt="" class="thumb-sm rounded-circle mr-2"> Frank M. Lyons</td>
                                    <td>Paypal</td>
                                    <td>15/7/2018</td>
                                    <td>$35,000</td>
                                    <td><span class="badge badge-boxed badge-soft-primary">Success</span></td>
                                </tr>
                                <tr>
                                    <td>Market Research</td>
                                    <td><img src="https://bootdey.com/img/Content/avatar/avatar3.png" alt="" class="thumb-sm rounded-circle mr-2"> Angelo Butler</td>
                                    <td>Pioneer</td>
                                    <td>30/9/2018</td>
                                    <td>$45,000</td>
                                    <td><span class="badge badge-boxed badge-soft-warning">Panding</span></td>
                                </tr>
                                <tr>
                                    <td>Website &amp; Blog</td>
                                    <td><img src="https://bootdey.com/img/Content/avatar/avatar4.png" alt="" class="thumb-sm rounded-circle mr-2"> Phillip Morse</td>
                                    <td>Paypal</td>
                                    <td>2/6/2018</td>
                                    <td>$70,000</td>
                                    <td><span class="badge badge-boxed badge-soft-warning">Success</span></td>
                                </tr>
                                <tr>
                                    <td>Product Devlopment</td>
                                    <td><img src="https://bootdey.com/img/Content/avatar/avatar6.png" alt="" class="thumb-sm rounded-circle mr-2"> Kevin Heal</td>
                                    <td>Paypal</td>
                                    <td>5/8/2018</td>
                                    <td>$15,000</td>
                                    <td><span class="badge badge-boxed badge-soft-primary">panding</span></td>
                                </tr>
                                <tr>
                                    <td>New Office Building</td>
                                    <td><img src="https://bootdey.com/img/Content/avatar/avatar7.png" alt="" class="thumb-sm rounded-circle mr-2"> Frank M. Lyons</td>
                                    <td>Paypal</td>
                                    <td>15/7/2018</td>
                                    <td>$35,000</td>
                                    <td><span class="badge badge-boxed badge-soft-primary">Success</span></td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                        <!--end table-responsive-->
                        <div class="pt-3 border-top text-right"><a href="#" class="text-primary">View all <i class="mdi mdi-arrow-right"></i></a></div>
                    </div>
                </div>
            </div>
    </div>
    <!-- /. ROW  -->
</div>
<!-- /. PAGE INNER -->
</div>
<!-- /. PAGE WRAPPER -->

<style>
    body{
        background:#f5f5f5;
        /*margin-top:20px;*/
    }
    .card {
        border: none;
        -webkit-box-shadow: 1px 0 20px rgba(96,93,175,.05);
        box-shadow: 1px 0 20px rgba(96,93,175,.05);
        margin-bottom: 30px;
    }
    .table th {
        font-weight: 500;
        color: #827fc0;
    }
    .table thead {
        background-color: #f3f2f7;
    }
    .table>tbody>tr>td, .table>tfoot>tr>td, .table>thead>tr>td {
        padding: 14px 12px;
        vertical-align: middle;
    }
    .table tr td {
        color: #8887a9;
    }
    .thumb-sm {
        height: 32px;
        width: 32px;
    }
    .badge-soft-warning {
        background-color: rgba(248,201,85,.2);
        color: #f8c955;
    }

    .badge {
        font-weight: 500;
    }
    .badge-soft-primary {
        background-color: rgba(96,93,175,.2);
        color: #605daf;
    }
</style>