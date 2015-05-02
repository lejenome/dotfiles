// {{{ INFO
var INFO =xml`
<plugin name="share.js" version="0.1"
        summary="Share a link on social media"
        xmlns="http://vimperator.org/namespaces/liberator">
  <author email="bmoez.j@gmail.com">Moez Bouhlel</author>
  <license href="http://opensource.org/licenses/mit-license.php">MIT</license>
  <project name="Vimperator" minVersion="2.3"/>
  <p>Share a link on Social media (Google+, Facebook, Twitter, Tumblr, LinkedIn)</p>
  <item>
    <tags>'share.js'</tags>
    <spec>:share</spec>
    <description>
      <p>Share the link of the current tab on Social Media.</p>
    </description>
  </item>
</plugin>`;
// }}}

(function(){
  commands.addUserCommand(
    ['share'],
    'Share this link on social media (Facebook, Google+, Twitter, Tumblr, LinkedIn)',
    function(){
      let Cc=Components.classes;
      let Ci=Components.interfaces;
      let doc=gBrowser.selectedBrowser.contentDocument;
      let url=encodeURIComponent(doc.URL);
      let title = encodeURIComponent(doc.title);
      let fb = 'https://www.facebook.com/sharer/sharer.php?u=' + url;
      let tw = "https://twitter.com/intent/tweet?url=" + url + "&text=" +title;
      let gp = "https://plus.google.com/share?url=" + url + "&soc-app=170&text=" + title;
      let li = "https://www.linkedin.com/shareArticle?mini=true&url=" + url + "&title=" + title;
      let tu = "https://www.tumblr.com/share?v=3&u=" + url + "&t=" + title;

      gBrowser.selectedTab = gBrowser.addTab(fb);
      gBrowser.selectedTab = gBrowser.addTab(tw);
      gBrowser.selectedTab = gBrowser.addTab(gp);
      gBrowser.selectedTab = gBrowser.addTab(li);
      gBrowser.selectedTab = gBrowser.addTab(tu);
    }
  );
})();
