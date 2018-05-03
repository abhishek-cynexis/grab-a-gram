
 function screenClass() {
     $(function () {
         $(".navbar-default").removeClass("navbar-fixed-top");
         function a() {
             return window.pageYOffset || document.documentElement.scrollTop
         }

//alert( $(window).width());
         var b = 100;
         $(window).scroll(function () {
             var c = a();
             c >= b ? $(".navbar-default").addClass("navbar-fixed-top") : $(".navbar-default").removeClass("navbar-fixed-top")
         })
     })
 }
 $(window).bind('resize',function(){
     //screenClass();
 });

 $(document).ready(function(){
     ///screenClass();
 });