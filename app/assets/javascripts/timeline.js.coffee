# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
#

$(document).ready ->
	$("#text_box").keypress (e) ->
		getQItem $("#text_box").val() if e.which is 13

getQItem = (qnumber) ->
	jsonurl = "http://www.wikidata.org/w/api.php?action=wbgetclaims&entity=" + qnumber + "&format=json&callback=?"
	console.log jsonurl
	$.getJSON(jsonurl).done (data) ->
		console.log data
		dateofdeath = data["claims"]["p570"][0]["mainsnak"]
		console.log dateofdeath

dateofdeath = undefined
