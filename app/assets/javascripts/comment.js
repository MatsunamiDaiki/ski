$(function(){
  function buildHTML(comment){
    let html = `<div class="commentinfo">
    <div class="commnetname">
      ${comment.user_name}
    </div>
    <div class="commentdate">
      ${comment.created_at}
    </div>
    <div class="commentcontent">
      ${comment.text}
    </div>
    </div>`
    return html;
  }
  $('#new_comment').on('submit', function(e){
    e.preventDefault();
    let formData = new FormData(this);
    let url = $(this).attr('action')
    $.ajax({
      url: url,
      type: "POST",
      data: formData,
      dataType: 'json',
      processData: false,
      contentType: false
    })
    .done(function(data){
      let html = buildHTML(data);
      $('.commentbox').append(html);
      $('.textbox').val('');
      $('.form__submit').prop('disabled', false);
      // $('commentbox').animate({ scrollTop: $('commentbox')[0].scrollHeight});
    })
    .fail(function(){
      alert('error')
    })
  })
})