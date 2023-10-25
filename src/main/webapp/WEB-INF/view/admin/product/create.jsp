<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
import React, { useState } from 'react';
import { Form } from 'react-bootstrap';
<!DOCTYPE html>
<html lang="en">
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<head>
    <meta charset="utf-8" />
    <!--     logo web    -->
    <link rel="apple-touch-icon" sizes="76x76" href="">
    <!--     logo web    -->
    <link rel="icon" type="image/png" href="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>
        BITI'S STORE ADMIN
    </title>
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
    <!--     Fonts and icons     -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
    <!-- CSS Files -->
    <link href="/admin/css/bootstrap.min.css" rel="stylesheet" />
    <link href="/admin/css/paper-dashboard.css?v=2.0.1" rel="stylesheet" />
    <!-- CSS Just for demo purpose, don't include it in your project -->
    <link href="/admin/demo/demo.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />

</head>

<body class="">
<div class="wrapper ">
    <div class="sidebar" data-color="white" data-active-color="danger">
        <div class="logo">
            <a href="/product" class="simple-text logo-mini">
                <div class="logo-image-small">
                    <img src="">
                    <!--     logo web    -->
                </div>
            </a>
            <a href="/homepageadmin" class="simple-text logo-normal">
                BITI'S STORE</a>
        </div>
        <jsp:include page="../../layout/admin/header.jsp"></jsp:include>

        <jsp:include page="../../layout/admin/headerngang.jsp"></jsp:include>
        <!--  start   -->
        <div class="main-panel">
            <div class="content">
                <!--  start   -->
                </section>
                <section role="main" class="content-body" id="main-content">

                    <form action="/product"  method="post" id="formProduct">
                        <section class="card">
                            <header class="card-header">
                                <div class="card-actions">
                                    <a href="#" class="card-action card-action-toggle" data-card-toggle></a>
                                    <a href="#" class="card-action card-action-dismiss" data-card-dismiss></a>
                                </div>
                                <h2 class="card-title">Danh sách sản phẩm</h2>
                                <br>
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="mb-3">
                                            <a href="/productdetailadmin" class="btn btn-primary"><i
                                                    class="fas fa-chevron-left"></i> Trở về</a>
                                            <button type="submit" id="addToTable" class="btn btn-primary">Thêm sản phẩm <i
                                                    class="fas fa-plus"></i></button>
                                        </div>
                                    </div>
                                </div>
                            </header>
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-12">
                                        <div class="card card-outline">
                                            <div class="card-body pad">

                                                <div class="row">
                                                    <div class="col-lg-9 col-md-8">
                                                        <div class="form-group">
                                                            <div>
                                                                <label class="required-label">Tên sản phẩm <span
                                                                        class="required">*</span></label>
                                                            </div>
                                                            <select class="form-control" var="" name="name">

                                                                <c:forEach items="${lstproduct}"  var="pgg" >
                                                                        <option value="${pgg.id}">${pgg.name_}</option>
                                                                </c:forEach>
                                                            </select>
                                                        </div>
<%--                                                        <div class="form-group">--%>
<%--                                                            <div>--%>
<%--                                                                <label class="required-label">SIZE <span--%>
<%--                                                                        class="required">*</span></label>--%>
<%--                                                            </div>--%>
<%--                                                            <select class="form-control" var="">--%>

<%--                                                                <c:forEach items="${lstSize}"  var="pgg" >--%>
<%--                                                                    <option>${pgg.name_}</option>--%>
<%--                                                                </c:forEach>--%>

<%--                                                            </select>--%>

<%--                                                        </div>--%>
                                                        <select class="js-example-basic-multiple" name="nameSize" multiple>
                                                            <c:forEach items="${lstSize}"  var="size" >
                                                                <option value="${size.id}">${size.name_}</option>
                                                            </c:forEach>
                                                        </select>
                                                        <div class="form-group">
                                                            <div>
                                                                <label class="required-label">MÀU SẮC <span
                                                                        class="required">*</span></label>
                                                            </div>
                                                            <select class="form-control" var="" name="color">

                                                                <c:forEach items="${lstColor}"  var="pgg" >
                                                                    <option value="${pgg.id}">${pgg.name_}</option>
                                                                </c:forEach>
                                                            </select>
                                                        </div>
                                                        <div class="form-group">
                                                            <div>
                                                                <label class="required-label">KIỂU DÁNG <span
                                                                        class="required">*</span></label>
                                                            </div>
                                                            <select class="form-control" var="" name="kieu">

                                                                <c:forEach items="${lstForm}"  var="pgg" >
                                                                    <option value="${pgg.id}">${pgg.name_}</option>
                                                                </c:forEach>
                                                            </select>
                                                        </div>

                                                        <div class="form-group">
                                                            <div>
                                                                <label class="required-label" for="description">Mô tả <span
                                                                        class="required">*</span></label>
                                                            </div>
                                                            <textarea name="desc" class="textarea" id="description" name="description"></textarea>
                                                        </div>
                                                    </div>

                                                    <div class="col-lg-3 col-md-4">
                                                        <div class="form-group">
                                                            <label for="status" class="required-label">Trạng thái</label>
                                                            <select class="form-control" id="status">
                                                                <option value="1">Mở bán</option>
                                                                <option value="0">Không bán</option>
                                                            </select>
                                                        </div>
                                                        <div class="form-group">
                                                            <div>
                                                                <label class="required-label" for="price">Giá san phẩm (VNĐ) <span
                                                                        class="required">*</span></label>
                                                            </div>
                                                            <input type="number" class="form-control text-price-input money" name="price"
                                                                   id="price">
                                                        </div>
                                                        <div class="form-group">
                                                            <div>
                                                                <label class="required-label" for="quantity"> so luong <span
                                                                        class="required">*</span></label>
                                                            </div>
                                                            <input type="number" class="form-control text-price-input money" name="quantity"
                                                                   id="quantity">
                                                        </div>
<%--                                                        <div class="form-group">--%>
<%--                                                            <div>--%>
<%--                                                                <label class="required-label" for="salePrice">Giá bán ra của sản phẩm--%>
<%--                                                                    (VNĐ)--%>
<%--                                                                    <span class="required">*</span></label>--%>
<%--                                                            </div>--%>
<%--                                                            <input type="text" class="form-control text-price-input money"--%>
<%--                                                                   name="salePrice" id="salePrice">--%>
<%--                                                        </div>--%>
<%--                                                        <div class="form-group">--%>
<%--                                                            <div>--%>
<%--                                                                <label class="required-label" for="price">Thuế (%)<span--%>
<%--                                                                        class="required">*</span></label>--%>
<%--                                                            </div>--%>
<%--                                                            <input type="text" class="form-control text-price-input money" name="price"--%>
<%--                                                                   id="thue">--%>
<%--                                                        </div>--%>
<%--                                                        <div class="form-group">--%>
<%--                                                            <div class="custom-control custom-switch">--%>
<%--                                                                <input type="checkbox" class="custom-control-input" id="active" checked>--%>

<%--                                                                <label class="custom-control-label" >Được Phép khuyến mãi</label>--%>
<%--                                                            </div>--%>
<%--                                                        </div>--%>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-12">
                                                        <div>
                                                            <label class="required-label">Ảnh sản phẩm <span
                                                                    class="required">*</span></label> <i>(Lưu ý: Nên để nền trắng)</i>
                                                            <span class="invalid-feedback" id="invalid-feedback-product-img">Chưa chọn ảnh sản phẩm</span>
                                                        </div>
                                                        <div id="list-product-image" class="grid-list-img" >

                                                        </div>
                                                        <button type="button" class="btn btn-info" id="btn-upload-product-img"
                                                                data-toggle="modal" data-target="#choose-img-modal">
                                                            Chọn ảnh
                                                        </button>
                                                        <button type="submit" class="btn btn-info" id="btn-upload-product-img"
                                                                data-toggle="modal" data-target="#choose-img-modal">
                                                           ok
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </section>
                    </form>



                </section>
                <!--end-->
            </div>
        </div>
    </div>
    <!--   Core JS Files   -->
    <script src="../admin/js/core/jquery.min.js"></script>
    <script src="../admin/assets/js/core/popper.min.js">

    </script>
    <script src="../admin/assets/js/core/bootstrap.min.js"></script>
    <script src="../admin/assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
    <!--  Google Maps Plugin    -->
    <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
    <!-- Chart JS -->
    <script src="../admin/js/plugins/chartjs.min.js"></script>
    <!--  Notifications Plugin    -->
    <script src="../admin/js/plugins/bootstrap-notify.js"></script>
<%--    <script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4="--%>
<%--            crossorigin="anonymous"></script>--%>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>

    <script !src="">
        $(document).ready(function() {
            $('.js-example-basic-multiple').select2();
        });
    </script>
    <!-- Control Center for Now Ui Dashboard: parallax effects, scripts for the example pages etc -->
    <script src="../admin/js/paper-dashboard.min.js?v=2.0.1" type="text/javascript"></script><!-- Paper Dashboard DEMO methods, don't include it in your project! -->
    <script src="../admin/demo/demo.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    <script>
        $(document).ready(function() {
            // Javascript method's body can be found in assets/assets-for-demo/js/demo.js
            demo.initChartsPages();
        });
    </script>

</body>

</html>
