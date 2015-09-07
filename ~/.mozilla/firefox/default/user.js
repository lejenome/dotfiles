/* global user_pref */
/* jshint maxlen: false */
user_pref("browser.newtabpage.pinned", '[{"url":"https://www.facebook.com/","title":"Facebook"},{"url":"https://plus.google.com/","title":"Google+"},{"url":"https://mail.google.com/","title":"Gmail"},{"url":"https://github.com/lejenome","title":"lejenome (Moez Bouhlel)"},{"url":"https://twitter.com/","title":"Twitter"},{"url":"https://www.youtube.com/feed/subscriptions","title":"Youtube (Subscriptions)"}, {"url":"http://www.deviantart.com/messages/","title":"deviantART (messages)"},{"url":"https://translate.google.com/","title":"Translate"},{"url":"https://www.coursera.org/","title":"Coursera"},{"url":"https://courses.edx.org/dashboard","title":"Edx (dashboard)"}]');
user_pref("browser.search.defaultenginename", "Google");
// updeter config
user_pref("app.update.auto", true);
user_pref("app.update.silent", true);
user_pref("app.update.disable_button.showUpdateHistory", false);
// disk cache config
user_pref("browser.cache.disk.capacity", 50240);
user_pref("browser.cache.disk.smart_size.enabled", true);
user_pref("browser.cache.disk.smart_size.first_run", true);
user_pref("browser.cache.disk.smart_size.use_old_max", true);
user_pref("browser.cache.use_new_backend", 1);
// browser behaviours config
user_pref("browser.panorama.animate_zoom", false);
user_pref("browser.tabs.remote.autostart", false);
user_pref("browser.tabs.remote.autostart.1", false);
user_pref("browser.tabs.remote.autostart.2", false);
user_pref("browser.tabs.warnOnClose", false);
user_pref("browser.tabs.warnOnOpen", false);
user_pref("browser.zoom.full", false);
// enable browser dev edition futures
user_pref("browser.devedition.theme.enabled", true);
user_pref("browser.devedition.theme.showCustomizeButton", true);
// enable mozilla pravicy project
//user_pref("browser.polaris.enabled", true);
user_pref("browser.shell.checkDefaultBrowser", false);
//session store every 5min
user_pref("browser.sessionstore.interval", 360000);

user_pref("device.storage.enabled", true);
// devtools config
user_pref("devtools.theme", "dark");
user_pref("devtools.webide.autoinstallADBHelper", false);
user_pref("devtools.webide.enabled", true);
// enable some extra experimental DOM futures
/*
user_pref("dom.archivereader.enabled", true);
user_pref("dom.datastore.enabled", true);
user_pref("dom.experimental_forms", true);
user_pref("dom.fetch.enabled", true);
user_pref("dom.forms.autocomplete.experimental", true);
user_pref("dom.forms.requestAutocomplete", true);
user_pref("dom.icc.enabled", true);
user_pref("dom.identity.enabled", true);
user_pref("dom.inter-app-communication-api.enabled", true);
user_pref("dom.mozAlarms.enabled", true);
user_pref("dom.mozApps.used", true);
user_pref("dom.mozContacts.enabled", true);
user_pref("dom.mozInputMethod.enabled", true);
user_pref("dom.mozNetworkStats.enabled", true);
user_pref("dom.mozPermissionSettings.enabled", true);
user_pref("dom.mozSettings.enabled", true);
user_pref("dom.netinfo.enabled", true);
user_pref("dom.popup_allowed_events", "change click dblclick mouseup reset submit touchend keypress");
user_pref("dom.serviceWorkers.enabled", true);
user_pref("dom.sms.enabled", true);
user_pref("dom.sysmsg.enabled", true);
user_pref("dom.telephony.enabled", true);
user_pref("dom.voicemail.enabled", true);
user_pref("dom.w3c_pointer_events.enabled", true);
user_pref("dom.webapps.useCurrentProfile", true);
user_pref("dom.webcomponents.enabled", true);
user_pref("dom.image.picture.enabled", true);
user_pref("dom.image.srcset.enabled", true);
user_pref("dom.indexedDB.experimental", true);
user_pref("dom.undo_manager.enabled", true);
user_pref("dom.mapped_arraybuffer.enabled", true);
user_pref("dom.quotaManager.testing", true);
*/
//extension
user_pref("extensions.checkCompatibility.nightly", false);
user_pref("xpinstall.signatures.required", false);
// font settings
//user_pref("font.minimum-size.x-western", 8);
user_pref("font.name.monospace.x-western", "Source Code Pro");
user_pref("font.name.sans-serif.x-western", "Source Code Pro");
user_pref("font.name.serif.x-western", "Source Code Pro");
//user_pref("font.size.fixed.x-western", 11);
///user_pref("font.size.variable.x-western", 11);
// gfx settings
user_pref("gfx.color_management.enablev4", true);
user_pref("gfx.canvas.azure.backends", "skia,cairo");
user_pref("gfx.content.azure.backends", "skia,cairo");
user_pref("gfx.content.azure.enabled", true);
user_pref("gfx.work-around-driver-bugs", false);
user_pref("gfx.xrender.enabled", false);
// force OMTC
user_pref("layers.acceleration.force-enabled", true);
user_pref("layers.async-pan-zoom.enabled", true);
user_pref("layers.async-video.enabled", true);
//user_pref("layers.enable-tiles", true);
user_pref("layers.offmainthreadcomposition.async-animations", true);
user_pref("layers.offmainthreadcomposition.enabled", true);
user_pref("layers.offmainthreadcomposition.force-basic", true);
user_pref("layers.offmainthreadcomposition.testing.enabled", true);
user_pref("layers.use-deprecated-textures", false);
// layout config
user_pref("layout.css.dpi", 0);
user_pref("layout.css.filters.enabled", true);
user_pref("layout.css.grid.enabled", true);
user_pref("layout.css.ruby.enabled", true);
user_pref("layout.css.vertical-text.enabled", true);
// enable spell checking for input/textarea
user_pref("layout.spellcheckDefault", 2);
//user_pref("layout.css.will-change.enabled", true);
// media config
user_pref("media.fragmented-mp4.ffmpeg.enabled", true);
user_pref("media.mediasource.enabled", true);
user_pref("media.webspeech.recognition.enable", true);
user_pref("media.webspeech.synth.enabled", true);
user_pref("media.audio_data.enabled", true);
user_pref("media.eme.enabled", true);
user_pref("media.track.enabled", true);
user_pref("media.gmp-gmpopenh264.enabled", true);
// use pipe
user_pref("network.http.pipelining", true);
user_pref("network.http.pipelining.ssl", true);
user_pref("network.http.proxy.pipelining", true);

user_pref("notification.feature.enabled", true);
// pdfjs config
user_pref("pdfjs.enableHandToolOnLoad", true);
user_pref("pdfjs.enableWebGL", true);
// plugins config
user_pref("plugin.default.state", 0);
user_pref("plugin.state.flash", 0);
user_pref("plugin.state.libplugins", 0);
user_pref("plugin.state.npatgpc", 0);
user_pref("plugin.state.npbispbrowser", 0);
user_pref("plugin.state.npesteid-firefox-plugin", 0);
// privacy config
user_pref("privacy.donottrackheader.enabled", true);
// security
user_pref("security.tls.version.min", 1);
user_pref("security.csp.experimentalEnabled", true);
user_pref("security.csp.newbackend.enable", true);
user_pref("security.ssl.enable_alpn", true);
user_pref("security.dialog_enable_delay", 0);
// sync config
user_pref("services.sync.engine.history", false);
user_pref("services.sync.engine.passwords", false);
user_pref("services.sync.engine.prefs", false);
user_pref("services.push.enabled", true);
// webgl config
user_pref("webgl.force-enabled", true);
// enable shumway
user_pref("shumway.disabled", false);
// set default to US
user_pref("spellchecker.dictionary", "en-US");
// UTF-8 as default charset
user_pref("intl.charset.default", "UTF-8");
// incremental JS GC
//user_pref("dom.cycle_collector.incremental", true);
