config.load_autoconfig()

config.set("fileselect.handler", "external")
config.set("fileselect.single_file.command", ['alacritty', '--class', 'ranger,ranger', '-e', 'ranger', '--choosefile', '{}'])
config.set("fileselect.multiple_files.command", ['alacritty', '--class', 'ranger,ranger', '-e', 'ranger', '--choosefiles', '{}'])

c.aliases = {'w': 'session-save', 'q': 'close', 'qa': 'quit', 'wq': 'quit --save', 'x': 'quit --save'}

c.auto_save.session = True

c.colors.webpage.darkmode.enabled = False
c.colors.webpage.preferred_color_scheme = "dark"

c.zoom.default = "100%"
c.confirm_quit = ["downloads"]
c.editor.command = ["xterm", "-e", "nvim", "{file}", "-c", "normal $"]

c.url.default_page = "http://localhost:9999"
c.url.start_pages = ["localhost:9999"]
c.url.searchengines = {
    "DEFAULT": "http://localhost:9999/search?q={}",
    "y": "https://www.youtube.com/results?search_query={}",
    "r": "https://www.reddit.com/search/?q={}",
    "w": "https://www.wikipedia.org/w/index.php?title=Special:Search&search={}",
    "aw": "https://wiki.archlinux.org/index.php?search={}"
}
c.completion.open_categories = ['searchengines', 'quickmarks', 'bookmarks', 'history', 'filesystem']

c.tabs.show = "multiple"
c.tabs.width = "12%"
c.tabs.title.format = "{audio}{current_title}"

c.statusbar.show = "always"
c.statusbar.widgets = ["keypress", "search_match", "url"]

config.bind(',so', 'config-source')
config.bind('tT', 'config-cycle tabs.position top left')
config.bind("tH", "config-cycle tabs.show multiple never")
config.bind("sH", "config-cycle statusbar.show always never")
config.bind(",ed", "edit-url")
config.bind(",mp", "spawn mpv {url}")
config.bind(",Mp", "hint links spawn mpv {hint-url}")
config.bind(',ss', 'spawn --userscript rebuild-qutebrowser-grease-styles.py', mode='normal')
config.bind(",wd", "config-cycle colors.webpage.darkmod.enabled false true")

c.content.cookies.accept = 'no-unknown-3rdparty'

c.content.blocking.enabled = True
c.content.blocking.method = 'adblock' # uncomment this if you install python-adblock
c.content.blocking.adblock.lists = [
    "https://github.com/ewpratten/youtube_ad_blocklist/blob/master/blocklist.txt",
    "https://github.com/uBlockOrigin/uAssets/raw/master/filters/legacy.txt",
    "https://github.com/uBlockOrigin/uAssets/raw/master/filters/filters.txt",
    "https://github.com/uBlockOrigin/uAssets/raw/master/filters/filters-2020.txt",
    "https://github.com/uBlockOrigin/uAssets/raw/master/filters/filters-2021.txt",
    "https://github.com/uBlockOrigin/uAssets/raw/master/filters/filters-2022.txt",
    "https://github.com/uBlockOrigin/uAssets/raw/master/filters/filters-2023.txt",
    "https://github.com/uBlockOrigin/uAssets/raw/master/filters/filters-2024.txt",
    "https://github.com/uBlockOrigin/uAssets/raw/master/filters/badware.txt",
    "https://github.com/uBlockOrigin/uAssets/raw/master/filters/privacy.txt",
    "https://github.com/uBlockOrigin/uAssets/raw/master/filters/badlists.txt",
    "https://github.com/uBlockOrigin/uAssets/raw/master/filters/annoyances.txt",
    "https://github.com/uBlockOrigin/uAssets/raw/master/filters/annoyances-cookies.txt",
    "https://github.com/uBlockOrigin/uAssets/raw/master/filters/annoyances-others.txt",
    "https://github.com/uBlockOrigin/uAssets/raw/master/filters/badlists.txt",
    "https://github.com/uBlockOrigin/uAssets/raw/master/filters/quick-fixes.txt",
    "https://github.com/uBlockOrigin/uAssets/raw/master/filters/resource-abuse.txt",
    "https://github.com/uBlockOrigin/uAssets/raw/master/filters/unbreak.txt"
]

c.colors.completion.category.bg = '#111111'

c.colors.completion.category.border.bottom = '#000000'
c.colors.completion.category.border.top = '#000000'
c.colors.completion.category.fg = '#ffffff'

c.colors.completion.even.bg = '#000000'
c.colors.completion.fg = ['white', 'white', 'white']

c.colors.completion.item.selected.fg = '#777777'
c.colors.completion.item.selected.bg = '#111111'

c.colors.completion.item.selected.border.bottom = '#000000'
c.colors.completion.item.selected.border.top = '#000000'

c.colors.completion.item.selected.match.fg = '#d17e25'
c.colors.completion.match.fg = '#d17e25'
c.colors.completion.odd.bg = '#000000'

c.colors.completion.scrollbar.bg = '#000000'
c.colors.completion.scrollbar.fg = '#111111'

c.colors.contextmenu.disabled.bg = None
c.colors.contextmenu.disabled.fg = None
c.colors.contextmenu.menu.bg = None
c.colors.contextmenu.menu.fg = None
c.colors.contextmenu.selected.bg = None
c.colors.contextmenu.selected.fg = None

c.colors.prompts.bg = '#000000'
c.colors.prompts.border = '1px solid gray'
c.colors.prompts.fg = 'white'
c.colors.prompts.selected.bg = '#111111'

c.colors.statusbar.caret.bg = '#000000'
c.colors.statusbar.caret.fg = '#ffffff'

c.colors.statusbar.caret.selection.bg = '#000000'
c.colors.statusbar.caret.selection.fg = '#ffffff'

c.colors.statusbar.command.bg = 'black'
c.colors.statusbar.command.fg = 'white'

c.colors.statusbar.insert.bg = '#000000'
c.colors.statusbar.insert.fg = 'white'

c.colors.statusbar.progress.bg = 'white'
c.colors.statusbar.url.error.fg = 'orange'
c.colors.statusbar.url.fg = 'white'

c.colors.statusbar.url.hover.fg = 'aqua'
c.colors.statusbar.url.success.http.fg = '#777777'
c.colors.statusbar.url.success.https.fg = 'white'

c.colors.statusbar.url.warn.fg = 'yellow'

c.colors.tabs.bar.bg = '#000000'

c.colors.tabs.even.bg = '#111111'
c.colors.tabs.even.fg = '#777777'
c.colors.tabs.odd.bg = '#111111'
c.colors.tabs.odd.fg = '#777777'

c.colors.tabs.selected.even.bg = '#000000'
c.colors.tabs.selected.even.fg = '#ffffff'
c.colors.tabs.selected.odd.bg = '#000000'
c.colors.tabs.selected.odd.fg = '#ffffff'

c.colors.tabs.indicator.error = '#00000000'
c.colors.tabs.indicator.start = '#00000000'
c.colors.tabs.indicator.stop = '#00000000'

c.colors.tabs.pinned.even.bg = 'darkseagreen'
c.colors.tabs.pinned.even.fg = 'white'
c.colors.tabs.pinned.odd.bg = 'seagreen'
c.colors.tabs.pinned.odd.fg = 'white'
c.colors.tabs.pinned.selected.even.bg = 'black'
c.colors.tabs.pinned.selected.even.fg = 'white'
c.colors.tabs.pinned.selected.odd.bg = 'black'
c.colors.tabs.pinned.selected.odd.fg = 'white'
