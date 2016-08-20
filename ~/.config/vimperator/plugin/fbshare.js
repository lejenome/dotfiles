// {{{ INFO
var INFO =xml`
<plugin name="fbshare.js" version="0.2"
        summary="Share a link on Facebook."
        xmlns="http://vimperator.org/namespaces/liberator">
  <author email="bmoez.j@gmail.com">Moez Bouhlel</author>
  <license href="http://opensource.org/licenses/mit-license.php">MIT</license>
  <project name="Vimperator" minVersion="2.3"/>
  <p>Share a link on Facebook.</p>
  <item>
    <tags>'fbshare.js'</tags>
    <spec>:fb</spec>
    <description>
      <p>Share the link of the current tab on Facebook.</p>
    </description>
  </item>
</plugin>`;
// }}}

(function(){
  commands.addUserCommand(
    ['fb'],
    'Share this link on Facebook.',
    function(){
      let Cc=Components.classes;
      let Ci=Components.interfaces;
      let doc=gBrowser.selectedBrowser.contentDocument;
      let strEndPoint='https://www.facebook.com/sharer/sharer.php?u=';
      let strUrl=doc.URL;
      let strUri = strEndPoint+encodeURIComponent(strUrl);
      gBrowser.selectedTab = gBrowser.addTab(strUri);
    }
  );
})();
