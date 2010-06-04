$(function() {
  var options = {
    zoom: 14,
    center: new google.maps.LatLng(47.67, -122.38),
    mapTypeId: google.maps.MapTypeId.HYBRID
  };

  var map = new google.maps.Map($("#map_canvas")[0], options)
  for(var i in images) {
    function f() {
      var image = images[i]
      var marker = new google.maps.Marker({
        position: new google.maps.LatLng(image.latitude, image.longitude), 
        map: map, 
        title: image.url,
        icon: image.url,
        draggable: true
      });   
      google.maps.event.addListener(marker, 'dragend', function(evt) {
        image.latitude = evt.latLng.lat()
        image.longitude = evt.latLng.lng()
        $.post("/photo/update", image)
        console.log("Finished dragging marker for image ", image)
      }); 
    };
    f();
  }
});
