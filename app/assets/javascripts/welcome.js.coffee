# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

application_init = ->
  set_lnglat = (city, address) ->
    geocoder = new BMap.Geocoder()

    geocoder.getPoint(address, (point) ->
      if point
        $(".lat").val(point.lat)
        $(".lng").val(point.lng)
     ,city)

    init_input_suggest = (city) ->
      ac = new BMap.Autocomplete({"input": "suggestId", "location": city})
      ac.addEventListener("onconfirm", (e) ->
        _value = e.item.value
        myValue = _value.province + _value.city + _value + district + _value.street + _value.business
        $("#suggestId").attr("address", myValue)
        $("#suggestId").val myValue

        set_lnglat(city, address))
    init_input_suggest("昆明")

$(document).ready(application_init)

