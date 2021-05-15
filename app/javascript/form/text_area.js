$(function (){

  let count = $("#input-text").val().replace(/\n/g, "改行").length;
  let now_count = 500 - count;

  if (count > 500) {
    $("#counter").css("color","red");
  }
  $("#counter").text( "残り" + now_count + "文字");

  $("#input-text").on("keyup", function() {
    let count = $(this).val().replace(/\n/g, "改行").length;
    let now_count = 500 - count;

    if (count > 500) {
      $("#counter").css("color","red");
    } else {
      $("#counter").css("color","black");
    }
    $("#counter").text( "残り" + now_count + "文字");
  });
});
