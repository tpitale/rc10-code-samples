// track just this pageview to a custom variable
_gaq.push(['_setCustomVar', 1, 'purchase', 'level-2', 3]);
_gaq.push(['_trackPageview']);

// what do user do the rest of this session, or after an upgrade
_gaq.push(['_setCustomVar', 1, 'purchase', 'level-2', 2]);
_gaq.push(['_setCustomVar', 2, 'upgrade', '1', 2]); // use slot 2
_gaq.push(['_trackPageview']);