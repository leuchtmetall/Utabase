function readyf() {
  $('.setPrio[data-prio="'+ $('#song_priority').val() +'"]').addClass('selected');
  $('.setRating[data-rating="'+ $('#song_rating').val() +'"]').addClass('selected');
  $('.setKey[data-key="'+ $('#song_key').val() +'"]').addClass('selected');

  $(".setPrio").click(function(event) {
    $(".setPrio").removeClass('selected');
    $(this).addClass('selected');
    $('#song_priority').val($(this).data('prio'));
  });

  $(".setRating").click(function(event) {
    $(".setRating").removeClass('selected');
    $(this).addClass('selected');
    $('#song_rating').val($(this).data('rating'));
  });

  $(".setKey").click(function(event) {
    $(".setKey").removeClass('selected');
    $(this).addClass('selected');
    $('#song_key').val($(this).data('key'));
  });
  // alert($('#song_priority').val());
};
$(document).on('turbolinks:load', readyf);
