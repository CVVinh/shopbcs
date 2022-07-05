const header = document.querySelector("#topbar");
const headerHeight = header.clientHeight;
const navToggle = document.querySelector(".nav-toggle");
const countDown = document.querySelector(".countdown");
const daysText = document.querySelector(".days");
const hoursText = document.querySelector(".hours");
const minutesText = document.querySelector(".minutes");
const secondsText = document.querySelector(".seconds");
const timeCountDown = countDown?.dataset.time;
const selectDonVi = document.querySelectorAll(".button_box button");
const listProduct = document.querySelector(".list__product");
const showInfoOrder = listProduct?.querySelector(".product-show-order");
const productShow = document.querySelector(".product__pay");
const showAllProduct = listProduct?.querySelector(".product-list--buy");
const productShowHidden = listProduct?.querySelector(".product-hidden-order");
const iconDropdown = document.querySelector(".icon-dropdown");
const accordionShow = document.querySelector(".accordion-show");
let show = true;
const infoList = document.querySelectorAll(".info__list-item-link");
const iconRemoves = document.querySelectorAll(".icon-remove");
const giaBan = document.querySelector(".giaBan");
// console.log(parseFloat(t));

// NOTE
// Mai code tiếp phần giá cũ cho hợp lí

const tongGiaBan = document.querySelector(".tongGiaBan");
// Xoá sản phẩm theo bộ

if (iconRemoves) {
    iconRemoves.forEach((item) => {
        item.addEventListener("click", (e) => {
            let total = +giaBan.textContent
                .split("")
                .filter((item) => item !== "đ" && item !== ".")
                .join("");
            let totalOld = +tongGiaBan.textContent
                .split("")
                .filter((item) => item !== "đ" && item !== ".")
                .join("");

            let buyCombo = e.target.parentElement.parentElement;
            let buyComboList = buyCombo.parentElement;
            let buyComboLists = buyCombo.parentElement.parentElement;
            const buyAllPrice = +buyComboList
                .querySelector(".buy-price")
                .textContent.split("")
                .filter((item) => item !== "đ" && item !== ".")
                .join("");
            const buyAllOld = +buyComboList
                .querySelector(".buy-price--old")
                .textContent.split("")
                .filter((item) => item !== "đ" && item !== ".")
                .join("");
            buyComboLists.removeChild(buyComboList);

            if (buyAllPrice) {
                const price = total - buyAllPrice;
                giaBan.innerHTML = `${price.toLocaleString()}<sup>đ</sup>`;
            }
            if (buyAllOld) {
                const priceOld = totalOld - buyAllOld;
                tongGiaBan.innerHTML = `${priceOld.toLocaleString()}<sup>đ</sup>`;
            }

            // Cách 2
            // buyAllOld.forEach((ol) => {
            //     const priceOld = parseFloat(ol.textContent);
            //     totalAll += priceOld;
            // });
            // console.log(totalAll);
            // buyAllPrice.forEach((el) => {
            //     const price = parseFloat(el.textContent);
            //     total += price;
            // });
            // giaBan.innerHTML = `${total.toFixed(3)}đ`;
            // tongGiaBan.innerHTML = `${totalAll.toFixed(3)}đ`;
        });
    });
}
// info
if (infoList) {
    infoList.forEach((item) => {
        item.addEventListener("click", (el) => {
            infoList.forEach((it) => it.classList.remove("active"));
            el.target.classList.add("active");
        });
    });
}

if (iconDropdown) {
    iconDropdown.addEventListener("click", (e) => {
        e.target.classList.toggle("fa-caret-up");
        accordionShow.classList.toggle("show");
    });
}

if (listProduct) {
    showInfoOrder.addEventListener("click", function () {
        if (show) {
            showAllProduct.classList.toggle("show");
            showInfoOrder.innerHTML = `Ẩn thông tin đơn hàng <i class="fa fa-caret-down" aria-hidden="true"></i> `;
            show = false;
        } else {
            showAllProduct.classList.remove("show");
            showInfoOrder.innerHTML = `Hiển thị thông tin đơn hàng <i class="fa fa-caret-down" aria-hidden="true"></i> `;
            show = true;
        }
    });
}
selectDonVi.forEach((item) => {
    selectDonVi[0].classList.add("active");
    item.addEventListener("click", (event) => {
        selectDonVi.forEach((el) => el.classList.remove("active"));
        event.target.classList.add("active");
    });
});
const codeSaleLabel = document.querySelectorAll(".code__sale-label");

codeSaleLabel.forEach((item) => {
    codeSaleLabel[0].classList.add("active");
    item.addEventListener("click", (event) => {
        codeSaleLabel.forEach((el) => el.classList.remove("active"));
        event.target.classList.add("active");
    });
});
window.addEventListener("load", function () {
    window.addEventListener("scroll", function (e) {
        const heightScroll = window.pageYOffset;

        const topBar = navToggle.parentElement.parentElement;
        if (heightScroll > headerHeight) {
            // navToggle.classList.add("active");
            navToggle.style.transform = "translateY(100%)";
        } else {
            navToggle.style.transform = "translateY(-100%)";
            // navToggle.classList.remove("active");
        }
    });

    function countdown(date) {
        const endDate = new Date(date).getTime();

        const currentDate = new Date();

        if (isNaN(endDate) && endDate - currentDate <= 0) return;
        setInterval(caculate, 1000);
        function caculate() {
            let days, hours, minutes, seconds;
            const now = new Date();

            // Đổi ra timestamp ra milisecond
            const startDate = now.getTime();
            // Time còn lại
            let timeRemaining = parseInt((endDate - startDate) / 1000);
            if (timeRemaining <= 0) return;
            days = parseInt(timeRemaining / 86400);
            timeRemaining = timeRemaining % 86400;

            hours = parseInt(timeRemaining / 3600);
            timeRemaining = timeRemaining % 3600;

            minutes = parseInt(timeRemaining / 60);
            timeRemaining = timeRemaining % 60;

            seconds = parseInt(timeRemaining);

            daysText.textContent = days >= 10 ? days : `0${days}`;
            hoursText.textContent = hours >= 10 ? hours : `0${hours}`;
            minutesText.textContent = minutes >= 10 ? minutes : `0${minutes}`;
            secondsText.textContent = seconds >= 10 ? seconds : `0${seconds}`;
        }
    }
    countdown(timeCountDown);
});

$(document).ready(function () {
    $(".product-list").slick({
        slidesToShow: 5,
        slidesToScroll: 2,
        infinite: false,
        autoplay: true,
        autoplaySpeed: 2000,
        arrows: true,
        dots: true,
        prevArrow:
            "<button type='button' class='slick-prev pull-left'><i class='fa fa-angle-left' aria-hidden='true'></i></button>",
        nextArrow:
            "<button type='button' class='slick-next pull-right'><i class='fa fa-angle-right' aria-hidden='true'></i></button>",
        responsive: [
            {
                breakpoint: 1024,
                settings: {
                    slidesToShow: 3,
                    slidesToScroll: 2,
                    infinite: true,
                    dots: true,
                },
            },
            {
                breakpoint: 740,
                settings: {
                    slidesToShow: 2,
                    slidesToScroll: 2,
                    dots: true,
                    arrows: false,
                },
            },
            {
                breakpoint: 480,
                settings: {
                    slidesToShow: 1,
                    slidesToScroll: 1,
                    dots: true,
                    arrows: false,
                },
            },
        ],
    });
});
