// run as 
// phantomjs convert.js blah.md.html > blah.html
// or better yet
// for f in `ls *.md.html`; do phantomjs convert.js $f > "${f%%.*}".html; done
var system = require('system');
var page   = require('webpage').create();
// system.args[0] is the filename, so system.args[1] is the first real argument
var url    = system.args[1];
// render the page, and run the callback function
page.open(url, function () {
  // page.content is the source
  console.log(page.content);
  // need to call phantom.exit() to prevent from hanging
  phantom.exit();
});
