# Documentation:
#   qute://help/configuring.html
#   qute://help/settings.html

ALLOW_JAVASCRIPT_WEBSITES = (
    "qute://*/*",
    "devtools://*",
    "chrome://*/*",
    "chrome-devtools://*",
    r"*://127.0.0.1/*",
    r"*://localhost/*",
    r"*://*.amazon.com/*",
    r"*://*.archlinux.org/*",
    r"*://*.duckduckgo.com/*",
    r"*://*.evanchen.cc/*",
    r"*://*.github.com/*",
    r"*://*.kagi.com/*",
    r"*://*.mit.edu/*",
    r"*://*.myaccount.google.com/*",
    r"*://*.notion.so/*",
    r"*://*.notion.site/*",
    r"*://*.proton.me/*",
    r"*://*.overleaf.com/*",  # their documentation is admittedly not bad
    r"*://*.readthedocs.io/*",
    r"*://*.reddit.com/*",
    r"*://*.stackexchange.com/*",
    r"*://*.stripe.com/*",
    r"*://*.usaco.org/*",
    r"*://*.wikipedia.org/*",
    r"*://*.wolframalpha.com/*",
    r"*://*.wikidata.org/*",
    r"*://*.youtube.com/*",
    r"*://accounts.google.com/*",
    r"*://artofproblemsolving.com/*",
    r"*://arxiv.org/*",
    r"*://calendar.google.com/*",
    r"*://calendly.com/*",
    r"*://docs.google.com/*",
    r"*://drive.google.com/*",
    r"*://gitlab.com/*",
    r"*://login.artofproblemsolving.com/*",
    r"*://mathoverflow.net/*",
    r"*://stackoverflow.com/*",
)

BLOCKING_FILTERS = [
    # "https://small.oisd.nl",
    # "https://malware-filter.gitlab.io/malware-filter/phishing-filter.txt",
    # "https://malware-filter.gitlab.io/malware-filter/urlhaus-filter.txt",
    # "https://pgl.yoyo.org/adservers/serverlist.php?hostformat=adblockplus&showintro=1&mimetype=plaintext",
    # "https://raw.githubusercontent.com/uBlockOrigin/uAssets/master/filters/unbreak.txt",
    # "https://raw.githubusercontent.com/uBlockOrigin/uAssets/master/filters/filters.txt",
    # "https://raw.githubusercontent.com/uBlockOrigin/uAssets/master/filters/badware.txt",
    # "https://raw.githubusercontent.com/uBlockOrigin/uAssets/master/filters/privacy.txt",
    # "https://raw.githubusercontent.com/uBlockOrigin/uAssets/master/filters/resource-abuse.txt",
    "https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts",
    "https://easylist.to/easylist/easylist.txt",
    "https://easylist.to/easylist/easyprivacy.txt"
]

# Change the argument to True to still load settings configured via autoconfig.yml
config.load_autoconfig(False)

# Aliases for commands. The keys of the given dictionary are the
# aliases, while the values are the commands they map to.
# Type: Dict
c.aliases = {
    'w': 'session-save',
    'q': 'close',
    'qa': 'quit',
    'wq': 'quit --save',
    'wqa': 'quit --save'
}

# Time interval (in milliseconds) between auto-saves of
# config/cookies/etc.
# Type: Int
c.auto_save.interval = 15000
c.auto_save.session = False

# Try to pre-fetch DNS entries to speed up browsing.
# Type: Bool
c.content.dns_prefetch = True

# Allow websites to read canvas elements. Note this is needed for some
# websites to work properly. On QtWebEngine < 6.6, this setting requires
# a restart and does not support URL patterns, only the global setting
# is applied.
# Type: Bool
c.content.canvas_reading = False

# Which cookies to accept. With QtWebEngine, this setting also controls
# other features with tracking capabilities similar to those of cookies;
# including IndexedDB, DOM storage, filesystem API, service workers, and
# AppCache. Note that with QtWebKit, only `all` and `never` are
# supported as per-domain values. Setting `no-3rdparty` or `no-
# unknown-3rdparty` per-domain on QtWebKit will have the same effect as
# `all`. If this setting is used with URL patterns, the pattern gets
# applied to the origin/first party URL of the page making the request,
# not the request URL. With QtWebEngine 5.15.0+, paths will be stripped
# from URLs, so URL patterns using paths will not match. With
# QtWebEngine 5.15.2+, subdomains are additionally stripped as well, so
# you will typically need to set this setting for `example.com` when the
# cookie is set on `somesubdomain.example.com` for it to work properly.
# To debug issues with this setting, start qutebrowser with `--debug
# --logfilter network --debug-flag log-cookies` which will show all
# cookies being set.
# Type: String
# Valid values:
#   - all: Accept all cookies.
#   - no-3rdparty: Accept cookies from the same origin only. This is known to break some sites, such as GMail.
#   - no-unknown-3rdparty: Accept cookies from the same origin only, unless a cookie is already set for the domain. On QtWebEngine, this is the same as no-3rdparty.
#   - never: Don't accept cookies at all.
c.content.cookies.accept = 'no-3rdparty'

# Which cookies to accept. With QtWebEngine, this setting also controls
# other features with tracking capabilities similar to those of cookies;
# including IndexedDB, DOM storage, filesystem API, service workers, and
# AppCache. Note that with QtWebKit, only `all` and `never` are
# supported as per-domain values. Setting `no-3rdparty` or `no-
# unknown-3rdparty` per-domain on QtWebKit will have the same effect as
# `all`. If this setting is used with URL patterns, the pattern gets
# applied to the origin/first party URL of the page making the request,
# not the request URL. With QtWebEngine 5.15.0+, paths will be stripped
# from URLs, so URL patterns using paths will not match. With
# QtWebEngine 5.15.2+, subdomains are additionally stripped as well, so
# you will typically need to set this setting for `example.com` when the
# cookie is set on `somesubdomain.example.com` for it to work properly.
# To debug issues with this setting, start qutebrowser with `--debug
# --logfilter network --debug-flag log-cookies` which will show all
# cookies being set.
# Type: String
# Valid values:
#   - all: Accept all cookies.
#   - no-3rdparty: Accept cookies from the same origin only. This is known to break some sites, such as GMail.
#   - no-unknown-3rdparty: Accept cookies from the same origin only, unless a cookie is already set for the domain. On QtWebEngine, this is the same as no-3rdparty.
#   - never: Don't accept cookies at all.
config.set('content.cookies.accept', 'all', 'chrome-devtools://*')

# Which cookies to accept. With QtWebEngine, this setting also controls
# other features with tracking capabilities similar to those of cookies;
# including IndexedDB, DOM storage, filesystem API, service workers, and
# AppCache. Note that with QtWebKit, only `all` and `never` are
# supported as per-domain values. Setting `no-3rdparty` or `no-
# unknown-3rdparty` per-domain on QtWebKit will have the same effect as
# `all`. If this setting is used with URL patterns, the pattern gets
# applied to the origin/first party URL of the page making the request,
# not the request URL. With QtWebEngine 5.15.0+, paths will be stripped
# from URLs, so URL patterns using paths will not match. With
# QtWebEngine 5.15.2+, subdomains are additionally stripped as well, so
# you will typically need to set this setting for `example.com` when the
# cookie is set on `somesubdomain.example.com` for it to work properly.
# To debug issues with this setting, start qutebrowser with `--debug
# --logfilter network --debug-flag log-cookies` which will show all
# cookies being set.
# Type: String
# Valid values:
#   - all: Accept all cookies.
#   - no-3rdparty: Accept cookies from the same origin only. This is known to break some sites, such as GMail.
#   - no-unknown-3rdparty: Accept cookies from the same origin only, unless a cookie is already set for the domain. On QtWebEngine, this is the same as no-3rdparty.
#   - never: Don't accept cookies at all.
config.set('content.cookies.accept', 'all', 'devtools://*')

# Value to send in the `Accept-Language` header. Note that the value
# read from JavaScript is always the global value.
# Type: String
c.content.headers.accept_language = 'en-US,en;q=0.9'

# Value to send in the `Accept-Language` header. Note that the value
# read from JavaScript is always the global value.
# Type: String
config.set('content.headers.accept_language', '',
           'https://matchmaker.krunker.io/*')

# Custom headers for qutebrowser HTTP requests.
# Type: Dict
c.content.headers.custom = {}

# Value to send in the `DNT` header. When this is set to true,
# qutebrowser asks websites to not track your identity. If set to null,
# the DNT header is not sent at all.
# Type: Bool
c.content.headers.do_not_track = True

# When to send the Referer header. The Referer header tells websites
# from which website you were coming from when visiting them. Note that
# with QtWebEngine, websites can override this preference by setting the
# `Referrer-Policy:` header, so that any websites visited from them get
# the full referer. No restart is needed with QtWebKit.
# Type: String
# Valid values:
#   - always: Always send the Referer. With QtWebEngine 6.2+, this value is unavailable and will act like `same-domain`.
#   - never: Never send the Referer. This is not recommended, as some sites may break.
#   - same-domain: Only send the Referer for the same domain. This will still protect your privacy, but shouldn't break any sites. With QtWebEngine, the referer will still be sent for other domains, but with stripped path information.
c.content.headers.referer = 'same-domain'

# User agent to send.  The following placeholders are defined:  *
# `{os_info}`: Something like "X11; Linux x86_64". * `{webkit_version}`:
# The underlying WebKit version (set to a fixed value   with
# QtWebEngine). * `{qt_key}`: "Qt" for QtWebKit, "QtWebEngine" for
# QtWebEngine. * `{qt_version}`: The underlying Qt version. *
# `{upstream_browser_key}`: "Version" for QtWebKit, "Chrome" for
# QtWebEngine. * `{upstream_browser_version}`: The corresponding
# Safari/Chrome version. * `{qutebrowser_version}`: The currently
# running qutebrowser version.  The default value is equal to the
# unchanged user agent of QtWebKit/QtWebEngine.  Note that the value
# read from JavaScript is always the global value. With QtWebEngine
# between 5.12 and 5.14 (inclusive), changing the value exposed to
# JavaScript requires a restart.
# Type: FormatString
c.content.headers.user_agent = 'Mozilla/5.0 ({os_info}) AppleWebKit/{webkit_version} (KHTML, like Gecko) {qt_key}/{qt_version} {upstream_browser_key}/{upstream_browser_version} Safari/{webkit_version}'

# User agent to send.  The following placeholders are defined:  *
# `{os_info}`: Something like "X11; Linux x86_64". * `{webkit_version}`:
# The underlying WebKit version (set to a fixed value   with
# QtWebEngine). * `{qt_key}`: "Qt" for QtWebKit, "QtWebEngine" for
# QtWebEngine. * `{qt_version}`: The underlying Qt version. *
# `{upstream_browser_key}`: "Version" for QtWebKit, "Chrome" for
# QtWebEngine. * `{upstream_browser_version}`: The corresponding
# Safari/Chrome version. * `{qutebrowser_version}`: The currently
# running qutebrowser version.  The default value is equal to the
# unchanged user agent of QtWebKit/QtWebEngine.  Note that the value
# read from JavaScript is always the global value. With QtWebEngine
# between 5.12 and 5.14 (inclusive), changing the value exposed to
# JavaScript requires a restart.
# Type: FormatString
config.set(
    'content.headers.user_agent',
    'Mozilla/5.0 ({os_info}) AppleWebKit/{webkit_version} (KHTML, like Gecko) {upstream_browser_key}/{upstream_browser_version} Safari/{webkit_version}',
    'https://web.whatsapp.com/')

# User agent to send.  The following placeholders are defined:  *
# `{os_info}`: Something like "X11; Linux x86_64". * `{webkit_version}`:
# The underlying WebKit version (set to a fixed value   with
# QtWebEngine). * `{qt_key}`: "Qt" for QtWebKit, "QtWebEngine" for
# QtWebEngine. * `{qt_version}`: The underlying Qt version. *
# `{upstream_browser_key}`: "Version" for QtWebKit, "Chrome" for
# QtWebEngine. * `{upstream_browser_version}`: The corresponding
# Safari/Chrome version. * `{qutebrowser_version}`: The currently
# running qutebrowser version.  The default value is equal to the
# unchanged user agent of QtWebKit/QtWebEngine.  Note that the value
# read from JavaScript is always the global value. With QtWebEngine
# between 5.12 and 5.14 (inclusive), changing the value exposed to
# JavaScript requires a restart.
# Type: FormatString
config.set('content.headers.user_agent',
           'Mozilla/5.0 ({os_info}; rv:90.0) Gecko/20100101 Firefox/90.0',
           'https://accounts.google.com/*')

# Enable the ad/host blocker
# Type: Bool
c.content.blocking.enabled = True

# Block subdomains of blocked hosts. Note: If only a single subdomain is
# blocked but should be allowed, consider using
# `content.blocking.whitelist` instead.
# Type: Bool
c.content.blocking.hosts.block_subdomains = True

# List of URLs to ABP-style adblocking rulesets.  Only used when Brave's
# ABP-style adblocker is used (see `content.blocking.method`).  You can
# find an overview of available lists here:
# https://adblockplus.org/en/subscriptions - note that the special
# `subscribe.adblockplus.org` links aren't handled by qutebrowser, you
# will instead need to find the link to the raw `.txt` file (e.g. by
# extracting it from the `location` parameter of the subscribe URL and
# URL-decoding it).
# Type: List of Url
c.content.blocking.method = "both"
c.content.blocking.adblock.lists = BLOCKING_FILTERS

# A list of patterns that should always be loaded, despite being blocked
# by the ad-/host-blocker. Local domains are always exempt from
# adblocking. Note this whitelists otherwise blocked requests, not
# first-party URLs. As an example, if `example.org` loads an ad from
# `ads.example.org`, the whitelist entry could be
# `https://ads.example.org/*`. If you want to disable the adblocker on a
# given page, use the `content.blocking.enabled` setting with a URL
# pattern instead.
# Type: List of UrlPattern
c.content.blocking.whitelist = []

# Load images automatically in web pages.
# Type: Bool
config.set('content.images', True, 'chrome-devtools://*')

# Load images automatically in web pages.
# Type: Bool
config.set('content.images', True, 'devtools://*')

# Enable JavaScript.
# Type: Bool
c.content.javascript.enabled = False
for site in ALLOW_JAVASCRIPT_WEBSITES:
    config.set("content.javascript.enabled", True, site)

# Allow locally loaded documents to access remote URLs.
# Type: Bool
config.set('content.local_content_can_access_remote_urls', True,
           'file:///home/clementpoiret/.local/share/qutebrowser/userscripts/*')

# Allow locally loaded documents to access other local URLs.
# Type: Bool
config.set('content.local_content_can_access_file_urls', False,
           'file:///home/clementpoiret/.local/share/qutebrowser/userscripts/*')

c.downloads.position = "bottom"
c.downloads.remove_finished = 5000

c.hints.auto_follow = "unique-match"
c.hints.auto_follow_timeout = 700

c.input.insert_mode.auto_enter = True
c.input.insert_mode.auto_leave = True
c.input.insert_mode.auto_load = True

c.tabs.background = True

# Allow websites to register protocol handlers via
# `navigator.registerProtocolHandler`.
# Type: BoolAsk
# Valid values:
#   - true
#   - false
#   - ask
config.set('content.register_protocol_handler', False,
           'https://mail.google.com?extsrc=mailto&url=%25s')

# Page to open if :open -t/-b/-w is used without URL. Use `about:blank`
# for a blank page.
# Type: FuzzyUrl
c.url.default_page = 'https://kagi.com/'

# URL segments where `:navigate increment/decrement` will search for a
# number.
# Type: FlagList
# Valid values:
#   - host
#   - port
#   - path
#   - query
#   - anchor
c.url.incdec_segments = ['path', 'query']

# Search engines which can be used via the address bar.  Maps a search
# engine name (such as `DEFAULT`, or `ddg`) to a URL with a `{}`
# placeholder. The placeholder will be replaced by the search term, use
# `{{` and `}}` for literal `{`/`}` braces.  The following further
# placeholds are defined to configure how special characters in the
# search terms are replaced by safe characters (called 'quoting'):  *
# `{}` and `{semiquoted}` quote everything except slashes; this is the
# most   sensible choice for almost all search engines (for the search
# term   `slash/and&amp` this placeholder expands to `slash/and%26amp`).
# * `{quoted}` quotes all characters (for `slash/and&amp` this
# placeholder   expands to `slash%2Fand%26amp`). * `{unquoted}` quotes
# nothing (for `slash/and&amp` this placeholder   expands to
# `slash/and&amp`). * `{0}` means the same as `{}`, but can be used
# multiple times.  The search engine named `DEFAULT` is used when
# `url.auto_search` is turned on and something else than a URL was
# entered to be opened. Other search engines can be used by prepending
# the search engine name to the search term, e.g. `:open google
# qutebrowser`.
# Type: Dict
c.url.searchengines = {'DEFAULT': 'https://kagi.com/search?q={}'}

# Page(s) to open at the start.
# Type: List of FuzzyUrl, or FuzzyUrl
c.url.start_pages = 'https://kagi.com'

# URL parameters to strip with `:yank url`.
# Type: List of String
c.url.yank_ignored_parameters = [
    'ref', 'utm_source', 'utm_medium', 'utm_campaign', 'utm_term',
    'utm_content', 'utm_name'
]

c.content.pdfjs = True

# Map keys to other keys, so that they are equivalent in all modes. When
# the key used as dictionary-key is pressed, the binding for the key
# used as dictionary-value is invoked instead. This is useful for global
# remappings of keys, for example to map <Ctrl-[> to <Escape>. NOTE:
# This should only be used if two keys should always be equivalent, i.e.
# for things like <Enter> (keypad) and <Return> (non-keypad). For normal
# command bindings, qutebrowser works differently to vim: You always
# bind keys to commands, usually via `:bind` or `config.bind()`. Instead
# of using this setting, consider finding the command a key is bound to
# (e.g. via `:bind gg`) and then binding the same command to the desired
# key. Note that when a key is bound (via `bindings.default` or
# `bindings.commands`), the mapping is ignored.
# Type: Dict
c.bindings.key_mappings = {
    '<Ctrl+6>': '<Ctrl+^>',
    '<Ctrl+Enter>': '<Ctrl+Return>',
    '<Ctrl+i>': '<Tab>',
    '<Ctrl+j>': '<Return>',
    '<Ctrl+m>': '<Return>',
    '<Ctrl+[>': '<Escape>',
    '<Enter>': '<Return>',
    '<Shift+Enter>': '<Return>',
    '<Shift+Return>': '<Return>'
}

# Bindings for normal mode
config.bind('sp', 'spawn --userscript qutepocket')
config.bind(r"E", 'spawn floorp "{url}"')
config.bind(r"M", 'hint links spawn mpv "{hint-url}"')
config.bind(r"P", "open -w https://pass.proton.me/u/0/")
config.bind("\\", "mode-enter passthrough")

c.spellcheck.languages = ["en-US", "fr-FR"]
