/* jshint devel:true */
'use strict';
$(document).ready(function(){
  console.log('Welcome');
  $('span.highlight.clickable').click(function(){
    $.ajax({
      url: this.id + '/' + this.id + '-index.html',
      datatype: 'html'
    }).done(function(data){
      $('.content').hide().html(data).fadeIn('slow');
    });
  });

  $('.container').on('click', '.blog-link', function(e){
    e.preventDefault
    $.ajax({
      url: 'blog/' + this.id,
      context: this,
      datatype: 'html'
    }).done(function(data){
      $(this).parent().hide().html(data).fadeIn('slow')
    });
  });
});
