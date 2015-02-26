# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
#
#
$(document).on 'page:load', ->
  $("#calendar").fullCalendar( 
     events: '/events.json'
     lang: 'de'
     editable: false
     theme: false
     header: 
      left: 'prev,next today'
      center: 'title'
      right: 'month,agendaWeek,agendaDay'
    
  )



