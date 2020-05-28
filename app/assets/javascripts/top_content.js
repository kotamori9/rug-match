$(document).ready(function () {
  const mySwiper = new Swiper('.swiper-container', {
    autoHeight: true,
    loop: true,
    autoplay: {
      delay: 4000,
      disableOnInteraction: false,
      reverseDirection: false
    },
  });
});