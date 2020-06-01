$(document).ready(function () {
  const mySwiper = new Swiper('.swiper-container', {
    autoHeight: true,
    loop: true,
    autoplay: {
      delay: 3000,
      disableOnInteraction: false,
      reverseDirection: false
    },
  });
});