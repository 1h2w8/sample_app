# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
updateCountdown = -> 
  remaining = 140 - jQuery("#micropost_content").val().length
  jQuery(".countdown").text remaining + " characters remaining"
  jQuery(".countdown").css "color", (if (140 >= remaining >= 21) then "gray")
  jQuery(".countdown").css "color", (if (21 > remaining >= 11) then "black")
  jQuery(".countdown").css "color", (if (11 > remaining)  then "red")

jQuery ->
  updateCountdown()
  $("#micropost_content").change updateCountdown
  $("#micropost_content").keyup updateCountdown