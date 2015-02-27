# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
#
#
goCalendar = ->
  $("#calendar").fullCalendar(
     events: '/events.json'
     lang: 'en'
     editable: false
     theme: false
     contentHeight: 600
     header: 
      left: 'prev,next today'
      center: 'title'
      right: 'month,agendaWeek,agendaDay'

    
  )
  
$(document).on 'page:load', goCalendar
$(document).ready goCalendar


