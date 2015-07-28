// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).on('ready', function () {

	var piece
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
		console.log(response);
		var number = 0;
		response.forEach(function (item) {

			number = number + 1;  //the json object is sending me twice as many items as are in the database for some reason
			// console.log(number);
			// console.log(item.x);
			// console.log(item.y);
			// if (item.contents == "rook") {
			// 	piece == "glyphicon glyphicon-tower"
			// // }
			// if (item.x == 1 && item.y == 1 && item.contents == "rook") {
			// 	$('.row1').append('<div class=' + piece + '></div>')
			// }
			if (number <= 64) { //the json object is sending me twice as many items as are in the database for some reason
				for (var i=1; i<9; i++) {
					for (var j=1; j<9; j++) {
						if (item.y == i && item.x == j && item.contents == "rook") {
							$('.row' + i.toString() + '.column' + j.toString()).append("<div class='glyphicon glyphicon-tower'></div>")
							//use images maybe instead of glyphicons if I can't get glyphicons to work
						}
						if (item.x == i && item.y == j && item.contents == "knight") {
							$('.row' + i.toString() + '.column' + j.toString()).append('<div class="glyphicon glyphicon-plane"></div>')
						}
						if (item.x == i && item.y == j && item.contents == "bishop") {
							$('.row' + i.toString() + '.column' + j.toString()).append('<div class="glyphicon glyphicon-fullscreen"></div>')
						}
						if (item.x == i && item.y == j && item.contents == "queen") {
							$('.row' + i.toString() + '.column' + j.toString()).append('<div class="glyphicon glyphicon-magnet"></div>')
						}
						if (item.x == i && item.y == j && item.contents == "king") {
							$('.row' + i.toString() + '.column' + j.toString()).append('<div class="glyphicon glyphicon-globe"></div>')
						}
						if (item.x == i && item.y == j && item.contents == "pawn") {
							$('.row' + i.toString() + '.column' + j.toString()).append('<div class="glyphicon glyphicon-leaf"></div>')
						}
					}
				}
			}
		})

		//if x ==1 && y==1 { append to .div1}
		//use an i loop to append the contents for each square to the corresponding div for that square with the
		//glyphicon that corresponds to the string in item.contents
	}
})