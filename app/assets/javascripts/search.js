$(function() {

  let serch_area = $(".list");

  function appendArea(area){
    let html = `<div class="listbox">
    <div class="listname">
      ${area.name}
    </div>
    <div class="listaddres">
       ${area.addres}
    </div>
    <div class="listinfo">
    <div class="listinfotel">
      ${area.tel}
    </div>
    <div class="listprice">
    <div class="listprice__adult">
      ${area.adult_price}
    </div>
    <div class="listprice__child">
      ${area.child_price}
    </div>
    </div>
    </div>
    <div class="list_enter">
    <a href="/areas/${area.id}">レビューへ</a>
    </div>
    </div>`
    serch_area.append(html)
  }


  $(".search-input").on("keyup", function() {
    let input = $(".search-input").val();
    $.ajax({
      type: 'GET',
      url: '/areas/search',
      data: { keyword: input },
      dataType: 'json'
    })  
    .done(function(areas){
      serch_area.empty();
      if (areas.length !== 0){
        areas.forEach(function(area){
          appendArea(area);
        });
      }
      else {
        appendErrMsgToHTML("一致するツイートがありません");
      }
    })
  });
});