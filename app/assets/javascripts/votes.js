function listenForVote(){
  $('.js-vote').on('submit', 'form', function(event){
    event.preventDefault()
    var url = $(this).attr('action')
    var data = $(this).serialize()
    var container = $(this).parent()
    $.post(url, data, function(response){
      $(container).replaceWith(response)
    })
  })
}

$(document).ready(function(){
  listenForVote()
})