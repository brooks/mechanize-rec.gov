// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(function(){
  $('.toggle-reg').click(function(e){
    e.preventDefault();
    $('.sign-in-view').toggle();
    $('.reg-view').toggle();
  })
});
