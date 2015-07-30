// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).on('ready', function () {

	var piece;
	var postingFlag = true;
	var movingFlag = true;
	var gameId;
	var clickedPieceSquare;
	var clickedPieceSquareContents;
	var moveToSquareAndContents;
	var contents;
	var data;

	function nextLayout () {
		$.ajax({
		    type: "GET",
		    url: "/squares",
		    data: '',
		    success: onSaveSuccess,
		    error: onSaveFailure,
		    dataType: "json"
		});
	}
	nextLayout ();

	function appendPieces (response) {
		var number = 0;

		for (var i=1; i<9; i++) {
			for (var j=1; j<9; j++) {
				$('.row' + i.toString() + '.column' + j.toString()).empty();
			}
		}
		console.log(response);
		response.spaces.forEach(function (item) {

			number = number + 1;  //the json object is sending me twice as many items as are in the database for some reason
			
			if (number <= 64) { //the json object is sending me twice as many items as are in the database for some reason
				for (var i=1; i<9; i++) {
					for (var j=1; j<9; j++) {				

						if (item.y == i && item.x == j && item.contents == "br") {
							$('.row' + i.toString() + '.column' + j.toString()).append('<div class="glyphicon glyphicon-tower" data-title="br"></div>')
							//use images maybe instead of glyphicons if I can't get glyphicons to work
						}
						if (item.y == i && item.x == j && item.contents == "bn") {
							$('.row' + i.toString() + '.column' + j.toString()).append('<div class="glyphicon glyphicon-plane" data-title="bn"></div>')
						}
						if (item.y == i && item.x == j && item.contents == "bb") {
							$('.row' + i.toString() + '.column' + j.toString()).append('<div class="glyphicon glyphicon-fullscreen" data-title="bb"></div>')
						}
						if (item.y == i && item.x == j && item.contents == "bq") {
							$('.row' + i.toString() + '.column' + j.toString()).append('<div class="glyphicon glyphicon-magnet" data-title="bq"></div>')
						}
						if (item.y == i && item.x == j && item.contents == "bk") {
							$('.row' + i.toString() + '.column' + j.toString()).append('<div class="glyphicon glyphicon-globe king" data-title="bk"></div>')
						}
						if (item.y == i && item.x == j && item.contents == "bp") {
							$('.row' + i.toString() + '.column' + j.toString()).append('<div class="glyphicon glyphicon-leaf pawn" data-title="bp"></div>')
						}



						if (item.y == i && item.x == j && item.contents == "wr") {
							$('.row' + i.toString() + '.column' + j.toString()).append('<div class="glyphicon glyphicon-tower" data-title="wr"></div>')
							//use images maybe instead of glyphicons if I can't get glyphicons to work
						}
						if (item.y == i && item.x == j && item.contents == "wn") {
							$('.row' + i.toString() + '.column' + j.toString()).append('<div class="glyphicon glyphicon-plane" data-title="wn"></div>')
						}
						if (item.y == i && item.x == j && item.contents == "wb") {
							$('.row' + i.toString() + '.column' + j.toString()).append('<div class="glyphicon glyphicon-fullscreen" data-title="wb"></div>')
						}
						if (item.y == i && item.x == j && item.contents == "wq") {
							$('.row' + i.toString() + '.column' + j.toString()).append('<div class="glyphicon glyphicon-magnet" data-title="wq"></div>')
						}
						if (item.y == i && item.x == j && item.contents == "wk") {
							$('.row' + i.toString() + '.column' + j.toString()).append('<div class="glyphicon glyphicon-globe king" data-title="wk"></div>')
						}
						if (item.y == i && item.x == j && item.contents == "wp") {
							$('.row' + i.toString() + '.column' + j.toString()).append('<div class="glyphicon glyphicon-leaf pawn" data-title="wp"></div>')
						}
						$('.row' + i.toString() + '.column' + j.toString()).on('click', function () {
							if (postingFlag == true) {
								console.log(postingFlag);
								postingFlag = false;
								console.log($(this));
								if ( $(this).children().length > 0 ) {
									clickedPieceSquare = {x: j, 
										y: i
									}
									contents = $(this).find('[data-title]').data('title');
									movingFlag = true;
									moveToSquare (response); 	
								}
							}
						})
					}
				}
			}
		})
	}

	function moveToSquarePartTwo (response) {
	
		if (movingFlag == true) {
			gameId = response.gmId;
			var updateGamesData = {
				id: gameId,
				finishedStatus: false
			}
			var updateTurnsData = {

			}
			data = {
		    	updateGamesData: updateGamesData,
		    	moveToSquareAndContents: moveToSquareAndContents
		    }
			$.ajax({
			    type: "PATCH",
			    url: "/move",
			    data: data,  //this is where I need to post the updated contents in games.id#.squares table.
		    					// Also need to have a users table and update how many moves they made for that side in a 
		    					// 	particular game.  Maybe with: Users has_many games through: newTable, Games has_many users through: newTable
			    success: onSaveSuccessPatch,
			    error: onSaveFailurePatch,
			});
		}
	}

	function moveToSquare (response) {
		for (var i=1; i<9; i++) { // this is every div on my board right now.  I could change this to just the container div
								  // I tried that actually and didnt work right anymore.  idk why
			for (var j=1; j<9; j++) {					
				$('.row' + i.toString() + '.column' + j.toString()).on('click', function(){
					console.log(contents);
					moveToSquareAndContents = {
						x: j,
						y: i,
						contents: contents
					}
					moveToSquarePartTwo(response)
				});
			}
		}
	}

	// function onSaveFailurePatchLayout () {

	// }

	// function onSaveSuccessPatchLayout () {

	// }

	function onSaveFailurePatch (err) {
		console.log("error Posting move to database");
	}

	function onSaveSuccessPatch (response) {
		console.log(response);
		nextLayout ();
		// appendPieces(response);
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