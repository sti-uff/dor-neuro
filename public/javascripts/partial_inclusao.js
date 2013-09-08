$(document).ready(function() {
  $("form").submit(function() {
    // $('._usuario_inclusao').val($('.token-input-token-facebook p').last().val());
    $('._usuario_inclusao').val($('form select').last().val());
  });
});