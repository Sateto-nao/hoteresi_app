$(function (){

  let count = $("#input-string").val().replace(/\n/g, "改行").length;
  let now_count = 150 - count;

  if (count > 150) {
    $("#counter-str").css("color","red");
  }
  $("#counter-str").text( "残り" + now_count + "文字");

  $("#input-string").on("keyup", function() {
    let count = $(this).val().replace(/\n/g, "改行").length;
    let now_count = 150 - count;

    if (count > 150) {
      $("#counter-str").css("color","red");
    } else {
      $("#counter-str").css("color","black");
    }
    $("#counter-str").text( "残り" + now_count + "文字");
  });
});
