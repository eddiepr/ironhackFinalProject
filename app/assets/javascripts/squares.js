// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).on('ready', function () {
	$('.row-odd-column-odd').on('click', function () {
		console.log("hi");
	})  


	$.ajax({
	    type: "GET",
	    url: "/squares",
	    data: '',
	    success: onSaveSuccess,
	    error: onSaveFailure,
	    dataType: "json"
	  });

	function onSaveFailure (err) {
		console.log(err);
		console.log("error getting chess pieces layout");
	}
	function onSaveSuccess (response) {
		console.log("success");

		response.forEach(function (item) {
			console.log(item.x);
			console.log(item.y);


		})

		//if x ==1 && y==1 { append to .div1}
		//use an i loop to append the contents for each square to the corresponding div for that square with the
		//glyphicon that corresponds to the string in item.contents
	}
})