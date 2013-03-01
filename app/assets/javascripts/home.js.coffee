# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
#$ ->
  #$('.icon-search').click -> 
     #$('.search_popup').slideDown '', (-> $(this))
     #$('.icon-search').toggleClass('active');
     #$('.icon-remove').toggleClass('active');
     #console.log "foobar" 


  #$('.icon-remove').click ->
       #$('.search_popup').slideUp '', (-> $(this))
       #$('.icon-search').toggleClass('active')
       #$('.icon-remove').toggleClass('active')
$ ->
  $('.menubutton').click ->
   	$('header nav').slideToggle '', (-> $(this))

  $('.login').click ->
    $('header .login_dropdown').slideToggle '', (-> $(this))
