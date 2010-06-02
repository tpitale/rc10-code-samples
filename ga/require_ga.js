(function() {
  var ga = document.createElement('script');
  var src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www');
  src += '.google-analytics.com/ga.js';

  ga.type = 'text/javascript';
  ga.async = true;
  ga.src = src;

  var s = document.getElementsByTagName('script')[0];
  s.parentNode.insertBefore(ga, s);
})();