$ ->
  $('.new_competence').on('ajax:success', (e, data, status, xhr) ->
    $('.new_competence').prepend(xhr.responseText)
  )
