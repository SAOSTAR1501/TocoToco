<?php require('layout/header.php') ?>
<style>
    main {
        font-family: "Encode Sans SC", sans-serif;
    }

    .row img {
        max-width: 100%;
    }
</style>
<main>
    <div class="container">
        <div id="ant-layout">
            <section class="search-quan">
                <i class="fas fa-search"></i>
                <form action="thucdon.php" method="GET">
                    <input name="search" type="text" placeholder="Tìm món hoặc thức ăn">
                </form>
            </section>
            <section class="main">
                <div class="row">
                    <h3>TocoToco là gì?</h3>
                    <p>Tại TocoToco, chúng tôi hiểu rằng một bữa ăn ngon có thể mang lại cho bạn sức khoẻ và tinh thần thoải mái nhất. Vì vậy, TocoToco cho ra mắt dịch vụ TocoToco online, nhằm kết nối các nhà hàng, quán ăn tại địa phương với tất cả mọi người. Bạn chỉ cần đặt đồ uống yêu thích trên ToCoToCo, đội ngũ giao hàng của chúng tôi sẽ nhanh chóng mang đến cho bạn bữa ăn nóng hổi và ngon lành.</p>
                </div>
                <div class="row">
                    <h3>TocoToco hoạt động như thế nào?</h3>
                    <p>TocoToco hoạt động từ 7h đến 22h hằng ngày, tuỳ theo khu vực của bạn và thời gian mở cửa cụ thể của từng cửa hàng.</p>
                </div>
                <div class="row">
                    <img src="images/bg/GrabFood.jpg" alt="">

                    <h3>Những nhà hàng, quán ăn nào trong khu vực của tôi giao hàng qua TocoToco?</h3>
                    <p>Để xem danh sách các nhà hàng, quán ăn có giao hàng qua TocoToco bạn chỉ cần nhập địa chỉ của mình trên ứng dụng. Để đảm bảo đồ uống tươi mát và được giao đến bạn nhanh chóng, TocoToco sẽ quét vị trí của bạn và gợi ý danh sách nhà hàng, quán ăn ở gần vị trí bạn nhất.</p>
                </div>
                <div class="row">
                    <h3>Tôi có thể thanh toán bằng tiền mặt không?</h3>
                    <p>Có nhé!</p>
                </div>
                <div class="row">
                    <h3>Tôi có thể thanh toán bằng ToCoPay không?</h3>
                    <p>Hiện tại bạn chưa thể thanh toán TocoToco bằng ToCoPay. Chúng tôi đang cố gắng để áp dụng phương thức thanh toán này cho dịch vụ ToCoToco trong thời gian sớm nhất</p>
                </div>
                <div class="row">
                    <h3>Chi phí được tính như thế nào?</h3>
                    <p>Chi phí hiển thị trên ứng dụng bao gồm chi phí của phần ăn theo đơn giá của nhà hàng và phí vận chuyển.</p>
                </div>
                <div class="row">
                    <h3>Tôi có thể đặt giao nhận những đồ uống nào qua TocoToco?</h3>
                    <p>Danh sách đa dạng các món ăn, thức uống của chúng tôi bao gồm: món Việt, Tây, Á, món theo phong cách Fusion,… có thể phục vụ cho mọi nhu cầu ăn uống của bạn.</p>
                </div>
                <div class="row">
                    <h3>Tôi có thể tìm thấy những nhà hàng, quán ăn nào trong khu vực của mình?</h3>
                    <p>Danh sách nhà hàng, quán ăn được sắp xếp dựa theo khoảng cách và thời gian giao hàng dự kiến từ Địa chỉ giao thức ăn đến vị trí của bạn.</p>
                </div>
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3820.280539447332!2d107.29400661486774!3d16.762712588455788!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x80f122cab2275a42!2zTmd1eeG7hW4gxJDEg25nIFRow6BuaA!5e0!3m2!1svi!2s!4v1629007864673!5m2!1svi!2s" width="550" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
                    <iframe width="560" height="315" style="margin-left:50px;" src="https://www.youtube.com/embed/8eHi2B2tQBs" title="Con Đường Khởi Nghiệp Của Người Sáng Lập Thương Hiệu Trà Sữa Việt Nam - ToCoToCo" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
            </section>
        </div>
    </div>
</main>
<?php require('layout/footer.php') ?>