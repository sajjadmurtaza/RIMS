$(document).on 'ready page:load', ->
  $('a.load-more').click (e) ->
    e.preventDefault()
    $('.load-more').hide()
    $('.loading-gif').show()
    last_id = $('.record').last().attr('data-id')

    $.ajax
      type: 'GET'
      url: $(this).attr('href')
      data: id: last_id
      dataType: 'script'
      success: ->
        $('.loading-gif').hide()
        $('.load-more').show()
