$(document).ready ->
  $('#search-flight').prop('disabled', true)

  $('#leaving_from').change ->
    validateLocation()

  $('#going_to').change ->
    validateLocation()

validateLocation = ->
  leaving_from = $('#leaving_from').val()
  going_to = $('#going_to').val()

  if leaving_from and going_to
    $('#search-flight').prop('disabled', false)
  else
    $('#search-flight').prop('disabled', true)

  if leaving_from == going_to
    $('#search-flight').prop('disabled', true)
    toastr.error("Leaving from and Going to must be different", "Error!")
    return false
