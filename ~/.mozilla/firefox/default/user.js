// updeter config
user_pref("app.update.auto", false);
user_pref("app.update.disable_button.showUpdateHistory", false);
// disk cache config
user_pref("browser.cache.disk.capacity", 10240);
user_pref("browser.cache.disk.smart_size.enabled", true);
user_pref("browser.cache.disk.smart_size.first_run", true);
user_pref("browser.cache.disk.smart_size.use_old_max", true);
user_pref("browser.cache.use_new_backend", 1);
// browser behaviours config
user_pref("browser.fullscreen.autohide", false);
user_pref("browser.shell.checkDefaultBrowser", false);
user_pref("browser.tabs.warnOnClose", false);
user_pref("browser.tabs.warnOnOpen", false);
user_pref("browser.zoom.full", false);

user_pref("device.storage.enabled", true);
// devtools config
user_pref("devtools.theme", "dark");
user_pref("devtools.webide.autoinstallADBHelper", false);
user_pref("devtools.webide.enabled", true);
// enable some extra DOM futures
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
user_pref("dom.webcomponents.enabled", true);
// force OMTC
user_pref("layers.acceleration.force-enabled", true);
user_pref("layers.enable-tiles", true);
user_pref("layers.offmainthreadcomposition.async-animations", true);
user_pref("layers.offmainthreadcomposition.enabled", true);
user_pref("layers.offmainthreadcomposition.force-basic", true);
user_pref("layers.offmainthreadcomposition.testing.enabled", true);
// layout config
user_pref("layout.css.dpi", 0);
user_pref("layout.css.filters.enabled", true);
user_pref("layout.css.grid.enabled", true);
user_pref("layout.css.ruby.enabled", true);
// media config
user_pref("media.fragmented-mp4.ffmpeg.enabled", true);
user_pref("media.mediasource.enabled", true);
user_pref("media.webspeech.recognition.enable", true);
user_pref("media.webspeech.synth.enabled", true);
// use pipe
user_pref("network.http.pipelining", true);
user_pref("network.http.pipelining.ssl", true);
user_pref("network.http.proxy.pipelining", true);

user_pref("notification.feature.enabled", true);
// pdfjs config
user_pref("pdfjs.enableHandToolOnLoad", true);
user_pref("pdfjs.enableWebGL", true);
// privacy config
user_pref("privacy.donottrackheader.enabled", true);
// sync config
user_pref("services.sync.engine.history", false);
user_pref("services.sync.engine.passwords", false);
user_pref("services.sync.engine.prefs", false);
// enable shumway
user_pref("shumway.disabled", false);
// set default to US
user_pref("spellchecker.dictionary", "en-US");
// UTF-8 as default charset
user_pref("intl.charset.default", "UTF-8");
// enable spell checking for input/textarea
user_pref("layout.spellcheckDefault", 2);
// incremental JS GC
user_pref("dom.cycle_collector.incremental", true);