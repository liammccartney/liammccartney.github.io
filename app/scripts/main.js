/* jshint devel:true */
'use strict';
$(document).ready(function(){
  console.log('Welcome');
  $('span.highlight.clickable').click(function(){
    $.ajax({
      url: this.id + '/' + this.id + '-index.html',
      datatype: 'html'
    }).done(function(data){
      $('.content').html(data)
    });
  });
});
