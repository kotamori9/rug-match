$(function () {
  $(".headerContent__rightBox").hover(
    () => {
      $(".humburgerMenu").addClass("show");
    },
    () => {
      $(".humburgerMenu").removeClass("show");
    }
  );
});
