// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).on('ready', function () {

	var piece;
	var postingFlag = true;
	var movingFlag = true;
	var gameId;

	$.ajax({
	    type: "GET",
	    url: "/squares",
	    data: '',
	    success: onSaveSuccess,
	    error: onSaveFailure,
	    dataType: "json"
	});

	function appendPieces (response) {
		var number = 0;

		for (var i=1; i<9; i++) {
			for (var j=1; j<9; j++) {
				$('.row' + i.toString() + '.column' + j.toString()).empty();
			}
		}

		response.spaces.forEach(function (item) {

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

	function moveToSquarePartTwo () {
		if (movingFlag == true) {

			var updateSquaresData = {

			}
			var updateGamesData = {
				id: 2, //change to whichever game user is currently on
				finishedStatus: false
			}
			var updateTurnsData = {

			}

			$.ajax({
			    type: "PATCH",
			    url: "/move",
			    data: updateGamesData,  //this is where I need to post the updated contents in games.id#.squares table.
		    					// Also need to have a users table and update how many moves they made for that side in a 
		    					// 	particular game.  Maybe with: Users has_many games through: newTable, Games has_many users through: newTable
			    success: onSaveSuccessPatch,
			    error: onSaveFailurePatch,
			});
		}
	}

	function moveToSquare () {
		for (var i=1; i<9; i++) {
			for (var j=1; j<9; j++) {				
				$('.row' + i.toString() + '.column' + j.toString()).on('click', moveToSquarePartTwo);
			}
		}
	}

	function onSaveFailurePatch (err) {
		console.log("error Posting move to database");
	}

	function onSaveSuccessPatch (response) {
		appendPieces(response);
	}

	function onSaveFailure (err) {
		console.log(err);
		console.log("error getting chess pieces layout");
	}
	function onSaveSuccess (response) {
		console.log(response);
		appendPieces (response);
		
	}
})