// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .
//= require jquery
//= require materialize
$(function() {
    $(document).ready(function () {
        $('select').formSelect();
    });

    $('select[name="sort"]').change(function () {
        const href = $(this).parents().find('input[name="href"]').val();
        const keyword = $(this).parents().find('input[name="key"]').val();
        const sort = $(this).val();
        console.log(href);
        location.href = keyword != null ? href + '?keyword=' + keyword + '&sort=' + sort : href + '?sort=' + sort;
    });

    $('#new-subject, #new-post').click(function() {
        const $newForm = $(this).parent().next();

        if($newForm.is(':hidden')) {
            $(this).val('キャンセル');
        } else {
            $(this).val('投稿する');
        }

        $newForm.toggle('slow');
    });

    let topBtn=$('#pageTop');
    topBtn.hide();

    $(window).scroll(function(){
        if($(this).scrollTop()>80){
            topBtn.fadeIn();
        }else{
            topBtn.fadeOut();
        }
    });

    topBtn.click(function(){
        $('body,html').animate({
            scrollTop: 0},500);
        return false;
    });
});