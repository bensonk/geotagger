$(function() {
  console.log("start")
  var options = {
    zoom: 12,
    center: new google.maps.LatLng(47.67, -122.38),
    mapTypeId: google.maps.MapTypeId.ROADMAP
  };
  console.log("options: ", options);
  var map = new google.maps.Map(document.getElementById("map_canvas"), options)
  console.log("end")
});
