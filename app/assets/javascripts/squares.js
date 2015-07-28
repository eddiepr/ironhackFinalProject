// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).on('ready', function () {
	$('.row-odd-column-odd').on('click', function () {
		console.log("hi");
	})


	$.ajax({
	    type: "GET",
	    url: "https://multiplayer-chess.herokuapp.com/",
	    data: '',
	    success: onSaveSuccess,
	    error: onSaveFailure,
	    dataType: "json"
	  });

	function onSaveFailure () {
		console.log("error getting chess pieces layout");
	}
	function onSaveSuccess (response) {
		console.log("successs")
	}


})