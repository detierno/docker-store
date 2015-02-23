toogle_guest = undefined
toogle_guest = jQuery(($) ->
  $('#guest_checkout_false').on 'click', ->
    $('#order_preferred_document').prop 'disabled', true
  $('#guest_checkout_true').on 'click', ->
    $('#order_preferred_document').prop 'disabled', false
  return
)
$(document).ready toogle_guest
$(document).on 'page:load', toogle_guest
