// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).on('ready', function () {

	var piece
	var postingFlag = true;
	var movingFlag = true;

	$.ajax({
	    type: "GET",
	    url: "/squares",
	    data: '',
	    success: onSaveSuccess,
	    error: onSaveFailure,
	    dataType: "json"
	});


	function moveToSquarePartTwo () {
		if (movingFlag == true) {
			console.log(movingFlag);
			movingFlag = false;
		}
	}

	function moveToSquare () {
		for (var i=1; i<9; i++) {
			for (var j=1; j<9; j++) {				
				$('.row' + i.toString() + '.column' + j.toString()).on('click', moveToSquarePartTwo);
			}
		}
	}

	function onSaveFailurePost (err) {
		// console.log("error Posting move to database");
	}

	function onSaveSuccessPost (response) {
		// console.log("posting success");
	}

	function onSaveFailure (err) {
		console.log(err);
		console.log("error getting chess pieces layout");
	}
	function onSaveSuccess (response) {
		console.log(response);
		var number = 0;
		response.forEach(function (item) {

			number = number + 1;  //the json object is sending me twice as many items as are in the database for some reason
			
			if (number <= 64) { //the json object is sending me twice as many items as are in the database for some reason
				for (var i=1; i<9; i++) {
					for (var j=1; j<9; j++) {
						
						
						$('.row' + i.toString() + '.column' + j.toString()).on('click', function () {
							if (postingFlag == true) {
								console.log(postingFlag);
								postingFlag = false;
								if ( $(this).children().length > 0 ) {
									movingFlag = true;
									moveToSquare (); 
									// console.log("fkjgdfkjgfdkjgfdjkgkjfdgjkfjdjgjdfjkgsdfkjg");// if user clicks a square that has a div with a piece, and also clicks an empty square, it will update 
														// the database to change the contents in the corresponding row in the corresponding game
														// I might need to do authenticity token thing for this
									$.ajax({
									    type: "POST",
									    url: "/move",
									    data: 'fsdfd',
									    success: onSaveSuccessPost,
									    error: onSaveFailurePost,
									    dataType: "json"
									});
								}
							}
						})
						if (item.y == i && item.x == j && item.contents == "rook") {
							$('.row' + i.toString() + '.column' + j.toString()).append("<div class='glyphicon glyphicon-tower'></div>")
							//use images maybe instead of glyphicons if I can't get glyphicons to work
						}
						if (item.y == i && item.x == j && item.contents == "knight") {
							$('.row' + i.toString() + '.column' + j.toString()).append('<div class="glyphicon glyphicon-plane"></div>')
						}
						if (item.y == i && item.x == j && item.contents == "bishop") {
							$('.row' + i.toString() + '.column' + j.toString()).append('<div class="glyphicon glyphicon-fullscreen"></div>')
						}
						if (item.y == i && item.x == j && item.contents == "queen") {
							$('.row' + i.toString() + '.column' + j.toString()).append('<div class="glyphicon glyphicon-magnet"></div>')
						}
						if (item.y == i && item.x == j && item.contents == "king") {
							$('.row' + i.toString() + '.column' + j.toString()).append('<div class="glyphicon glyphicon-globe"></div>')
						}
						if (item.y == i && item.x == j && item.contents == "pawn") {
							$('.row' + i.toString() + '.column' + j.toString()).append('<div class="glyphicon glyphicon-leaf"></div>')
						}
					}
				}
			}
		})
	}
})