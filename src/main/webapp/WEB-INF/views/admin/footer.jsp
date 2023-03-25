<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="footer" style="margin-top:300px;">
    <div class="container-fluid">
        <div class="row">
            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12">
                Copyright © 2018 Concept. All rights reserved. Dashboard by <a href="https://colorlib.com/wp/">Colorlib</a>.
            </div>
            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12">
                <div class="text-md-right footer-links d-none d-sm-block">
                    <a href="javascript: void(0);">About</a>
                    <a href="javascript: void(0);">Support</a>
                    <a href="javascript: void(0);">Contact Us</a>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- ============================================================== -->
<!-- end footer -->
<!-- ============================================================== -->
</div>
<!-- ============================================================== -->
<!-- end wrapper  -->
<!-- ============================================================== -->
</div>
<!-- ============================================================== -->
<!-- end main wrapper  -->
<!-- ============================================================== -->
<!-- Optional JavaScript -->
<!-- jquery 3.3.1 -->
<script src="<c:url value="/assets/admin/vendor/jquery/jquery-3.3.1.min.js"/>"></script>
<!-- bootstap bundle js -->
<script src="<c:url value="/assets/admin/vendor/bootstrap/js/bootstrap.bundle.js"/>"></script>
<!-- slimscroll js -->
<script src="<c:url value="/assets/admin/vendor/slimscroll/jquery.slimscroll.js"/>"></script>
<!-- main js -->
<script src="<c:url value="/assets/admin/libs/js/main-js.js"/>"></script>
<!-- chart chartist js -->
<script src="<c:url value="/assets/admin/vendor/charts/chartist-bundle/chartist.min.js"/>"></script>
<!-- sparkline js -->
<script src="<c:url value="/assets/admin/vendor/charts/sparkline/jquery.sparkline.js"/>"></script>
<!-- morris js -->
<script src="<c:url value="/assets/admin/vendor/charts/morris-bundle/raphael.min.js"/>"></script>
<script src="<c:url value="/assets/admin/vendor/charts/morris-bundle/morris.js"/>"></script>
<!-- chart c3 js -->
<script src="<c:url value="/assets/admin/vendor/charts/c3charts/c3.min.js"/>"></script>
<script src="<c:url value="/assets/admin/vendor/charts/c3charts/d3-5.4.0.min.js"/>"></script>
<script src="<c:url value="/assets/admin/vendor/charts/c3charts/C3chartjs.js"/>"></script>
<script src="<c:url value="/assets/admin/libs/js/dashboard-ecommerce.js"/>"></script>

<script src="<c:url value="/assets/admin/vendor/bootstrap-select/js/bootstrap-select.js"/>"></script>
<script>
    function redirectParams(name, value) {
        var url = new URL(window.location.href);
        url.searchParams.set(name, value);
        window.location.href = url.href;
    }

    function pagination(num) {
        redirectParams('page', num);
    }
</script>
</body>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

</html>
