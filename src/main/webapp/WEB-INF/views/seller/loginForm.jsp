<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ include file="../auth.jsp" %>


<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <title>Seller_Login</title>
    <meta content="" name="description">
    <meta content="" name="keywords">

    <!-- Favicons -->
    <link href="/admin_assets/img/favicon.png" rel="icon">
    <link href="/admin_assets/img/apple-touch-icon.png" rel="apple-touch-icon">

    <!-- Google Fonts -->
    <link href="/https://fonts.gstatic.com" rel="preconnect">


    <!-- Vendor CSS Files -->
    <link href="/admin_assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="/admin_assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
    <link href="/admin_assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
    <link href="/admin_assets/vendor/quill/quill.snow.css" rel="stylesheet">
    <link href="/admin_assets/vendor/quill/quill.bubble.css" rel="stylesheet">
    <link href="/admin_assets/vendor/remixicon/remixicon.css" rel="stylesheet">
    <link href="/admin_assets/vendor/simple-datatables/style.css" rel="stylesheet">

    <!-- Template Main CSS File -->
    <link href="/admin_assets/css/style.css" rel="stylesheet">
    <script src="/js/jquery-3.6.1.min.js"></script>
    <script src="/js/memmodify.js"></script>


    <main>
        <div class="container">

            <section
                    class="section register min-vh-100 d-flex flex-column align-items-center justify-content-center py-4">
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-lg-4 col-md-6 d-flex flex-column align-items-center justify-content-center">

                            <div class="d-flex justify-content-center py-4">
                                <a href="/" class="logo d-flex align-items-center w-auto">
                                    <img src="/admin_assets/img/logo.png" alt="">
                                    <span class="d-none d-lg-block">Seller</span>
                                </a>
                            </div><!-- End Logo -->

                            <div class="card mb-3">

                                <div class="card-body">

                                    <div class="pt-4 pb-2">
                                        <h5 class="card-title text-center pb-0 fs-4">Login</h5>
                                        <p class="text-center small">Enter your username & password to login</p>
                                    </div>

                                    <form class="row g-3 needs-validation" novalidate>

                                        <div class="col-12">
                                            <label for="yourUsername" class="form-label">Username</label>
                                            <div class="input-group has-validation">
                                                <input type="text" name="username" class="form-control"
                                                       id="yourUsername"
                                                       required>
                                                <div class="invalid-feedback">Please enter your username.</div>
                                            </div>
                                        </div>

                                        <div class="col-12">
                                            <label for="yourPassword" class="form-label">Password</label>
                                            <input type="password" name="password" class="form-control"
                                                   id="yourPassword"
                                                   required>
                                            <div class="invalid-feedback">Please enter your password!</div>
                                        </div>

                                        <div class="col-12">
                                            <div class="form-check">
                                                <input class="form-check-input" type="checkbox" name="remember"
                                                       value="true"
                                                       id="rememberMe">
                                                <label class="form-check-label" for="rememberMe">Remember me</label>
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <button class="btn btn-primary w-100" type="submit">Login</button>
                                        </div>
                                        <div class="col-12">
                                            <p class="small mb-0">Don't have account? <a href="pages-register.html">Create
                                                an account</a></p>
                                        </div>
                                    </form>

                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </section>
        </div>
    </main>


    <!-- ======= Footer ======= -->


    <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i
            class="bi bi-arrow-up-short"></i></a>

    <!-- Vendor JS Files -->
    <script src="/admin_assets/vendor/apexcharts/apexcharts.min.js"></script>
    <script src="/admin_assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="/admin_assets/vendor/chart.js/chart.min.js"></script>
    <script src="/admin_assets/vendor/echarts/echarts.min.js"></script>
    <script src="/admin_assets/vendor/quill/quill.min.js"></script>
    <script src="/admin_assets/vendor/simple-datatables/simple-datatables.js"></script>
    <script src="/admin_assets/vendor/tinymce/tinymce.min.js"></script>
    <script src="/admin_assets/vendor/php-email-form/validate.js"></script>

    <!-- Template Main JS File -->
    <script src="/admin_assets/js/main.js"></script>
    <script src="/js/jquery.nice-select.min.js"></script>
    <script src="/js/jquery-ui.min.js"></script>
    <script src="/js/jquery.slicknav.js"></script>
    <script src="/js/main.js"></script>