/* jshint devel:true */
'use strict';
$(document).ready(function(){
  console.log('Welcome');
  $('span').hover(function(){
    $(this).toggleClass('dark-highlight');
  }).click(function(){

  });
});
