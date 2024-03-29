
<footer class="footer_widgets">
    <div class="footer_top">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-6 col-sm-7">
                    <div class="widgets_container contact_us">
                        <div class="footer_logo">
                            <a href="index.html"><img src="assets/user/img/logo/logo_1.webp" alt=""></a>
                        </div>
                        <div class="footer_desc">
                            <p>Wibu Shop luôn đồng hành với tín đồ cosplay</p>
                        </div>

                        <p><span>Address:</span> KCN cao, TP. Thủ Đức, TP. HCM</p>
                        <p><span>Email:</span> <a href="#">wibu@gmail.com</a></p>
                        <p><span>Phone:</span> <a href="tel:+1250367864587">0358125754</a></p>
                    </div>
                </div>
                <div class="col-lg-2 col-md-6 col-sm-5">
                    <div class="widgets_container widget_menu">
                        <h3>Thông Tin</h3>
                        <div class="footer_menu">
                            <ul>
                                <li><a href="about.html">Giới Thiệu</a></li>
                                <li><a href="#">Sản Phẩm</a></li>
                                <li><a href="#">Liên Hệ</a></li>
                                <li><a href="#">Tài Khoản</a></li>
                            </ul>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <div class="footer_bottom">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6 col-md-6">
                    <div class="copyright_area">
                        <p>Copyright &copy; 2021 <a href="#">Wibu</a> All Right Reserved.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>
<script src="./assets/user/js/plugins.js"></script>
<script src="./assets/user/js/main.js"></script>
<script>
    function redirectParams(name, value) {
        var url = new URL(window.location.href);
        url.searchParams.set(name, value);
        window.location.href = url.href;
    }

    function pagination(num) {
        redirectParams('page', num);
    }
    function redirectAddToCart(idUser, idProduct, quantity) {
        window.location.href = './addProductToCart?idUser=' + idUser + '&idProduct=' + idProduct + '&quantity=' + quantity;
    }
    function redirectRemoveFromCart(idUser, idProduct) {
        window.location.href = './removeProductFromCart?idUser=' + idUser + '&idProduct=' + idProduct;
    }


    function addProductsToCart(idUser, idProduct) {
        const quantityInputElement = document.getElementById("productDetailQuantity");
        const inputValue = quantityInputElement.value;
        window.location.href = './addProductToCart?idUser=' + idUser + '&idProduct=' + idProduct + '&quantity=' + quantityInputElement.value;
    }

    function checkRentalDayNumber() {
        const invNoteInputElement = document.getElementById("order_note").value;
        const rentalDaysInputElement = document.getElementById("rentalDays").value;
        if (rentalDaysInputElement < 3 || rentalDaysInputElement > 7) {
            alert("Số ngày thuê từ 3 đến 7 ngày!");
        }
    }
    function redirectCheckout(idUser) {
        const invNoteInputElement = document.getElementById("order_note").value;
        const rentalDaysInputElement = document.getElementById("rentalDays").value;
        if (rentalDaysInputElement < 3 || rentalDaysInputElement > 7) {
            alert("Số ngày thuê từ 3 đến 7 ngày!");
        } else
            window.location.href = './createInvoice?idUser=' + idUser + '&rentalDays=' + rentalDaysInputElement + '&invNote=' + invNoteInputElement;

    }
    function quantityUpdateFunc(idUser, idProduct) {
        const quantityInput = document.getElementById("quantityUpdate");
        const quantity = quantityInput.value;
        if (quantity >= 1)
            window.location.href = './updateProductQuantityInCart?idUser=' + idUser + '&idProduct=' + idProduct + '&quantity=' + quantity;
        else {
            alert("Số lượng sản phẩm phải lớn hơn hoặc bằng 1!");
        }
    }
</script>
</body>

</html>
