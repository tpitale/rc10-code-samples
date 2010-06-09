var track_pageview = $('meta[name=track-pageview]').attr('content');

if(track_pageview !== undefined) {
  _gaq.push('_trackPageview', track_pageview);
}
