# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  $("#new_post")
    .on("ajax:success", (e, data, status, xhr) ->
      $("#posts-list").append xhr.responseText)
    .on("ajax:error", (e, xhr, status, error) ->
      $("#posts-list").append "<p>ERROR</p>")
