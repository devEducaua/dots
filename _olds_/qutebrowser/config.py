c = c
config = config

editor = "/home/edu/dow/bloat/nvim-linux-x86_64/bin/nvim"
config.load_autoconfig()

config.set("fileselect.handler", "external")
config.set("fileselect.single_file.command", ["st", "-e", "ranger", "--choosefile", "{}"])
config.set("fileselect.multiple_files.command", ["st", "-e", "ranger", "--choosefiles", "{}"])

c.aliases = {'w': 'session-save', 'q': 'close', 'qa': 'quit', 'wq': 'quit --save', 'x': 'quit --save'}

c.auto_save.session = True

c.colors.webpage.darkmode.enabled = False
c.colors.webpage.preferred_color_scheme = "dark"

c.zoom.default = "100%"
c.confirm_quit = ["downloads"]
c.editor.command = ["st", "-e", editor, "{file}", "-c", "normal $"]

c.downloads.location.directory = "/home/edu/dow"
c.downloads.remove_finished = 10000
c.downloads.position = "bottom"

c.fonts.default_family = [ "Monaspace Krypton", "DejaVu Sans Mono" ]

c.url.default_page = "file:///home/edu/.config/qutebrowser/homepage/index.html"
c.url.start_pages = ["file:///home/edu/.config/qutebrowser/homepage/index.html"]
c.url.searchengines = {
    "DEFAULT": "http://localhost:9999/search?q={}",
    "ddg": "https://duckduckgo.com/search?q={}",
    "yt": "https://www.youtube.com/results?search_query={}",
    "l": "https://letterboxd.com/search/{}/?adult",
    "inv": "http://localhost:8543/search?q={}",
    "sp": "https://open.spotify.com/search/{}",
    "r": "https://www.reddit.com/search/?q={}",
    "w": "https://www.wikipedia.org/w/index.php?title=Special:Search&search={}",
    "aw": "https://wiki.archlinux.org/index.php?search={}"
}
c.completion.open_categories = ['searchengines', 'quickmarks', 'bookmarks', 'history', 'filesystem']

c.tabs.show = "multiple"
c.tabs.width = "12%"
c.tabs.title.format = "{audio}{current_title}"
c.tabs.background = True

c.tabs.position = "top"
c.tabs.padding = { 
    "bottom": 3 ,
    "left": 5,
    "right": 5,
    "top": 0,
}

c.statusbar.show = "always"
c.statusbar.widgets = [ "keypress", "search_match", "url", "clock: %d/%m %a %H:%M" ]

c.statusbar.padding = {
    "bottom": 0,
    "left": 5,
    "right": 5,
    "top": 3
}

dir = config.configdir

config.unbind("<Ctrl-n>", mode="normal")


config.bind("<Ctrl-n>", "open -t")
config.bind(",op", "cmd-set-text -s :open -p")
config.bind(',so', 'config-source')
config.bind(',se', 'config-edit')
config.bind(',sj', f'spawn st -e {editor} {dir}/js.py')
config.bind('tT', 'config-cycle tabs.position top right')
config.bind("tH", "config-cycle tabs.show multiple never")
config.bind("sH", "config-cycle statusbar.show always never")
config.bind(",ed", "edit-url")
config.bind(',ss', 'spawn --userscript rebuild-qutebrowser-grease-styles.py', mode='normal')
config.bind(",wd", "config-cycle colors.webpage.darkmode.enabled false true")
config.bind(",mp", "hint links spawn mpv {hint-url}")
config.bind(",mi", "hint links spawn --userscript yt2inv.sh {hint-url}")
config.bind("<Ctrl-Shift-c>", "yank")
config.bind(",bk", f"spawn st -e {editor} /home/edu/not/bookmarks.md -c 'normal $'")
config.bind(",tJ", "config-cycle content.javascript.enabled false true")

config.set("content.javascript.enabled",  False)
import js
for s in js.get():
    config.set("content.javascript.enabled", True, s)

c.content.cookies.accept = 'no-unknown-3rdparty'

c.content.blocking.enabled = True
c.content.blocking.method = "both"
c.content.blocking.adblock.lists = [
        # "https://github.com/ewpratten/youtube_ad_blocklist/blob/master/blocklist.txt",
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

bg = "#000000"
fg = "#777777"
org = "#d17e25"
drk = "#111111";
wht = "#ffffff";

c.colors.webpage.bg = wht

c.colors.tooltip.bg = bg
c.colors.tooltip.fg = fg

c.colors.completion.category.bg = drk
c.colors.completion.category.border.bottom = bg
c.colors.completion.category.border.top = bg
c.colors.completion.category.fg = wht

c.colors.completion.even.bg = bg
c.colors.completion.fg = [wht, wht, wht]

c.colors.completion.item.selected.fg = fg
c.colors.completion.item.selected.bg = drk

c.colors.completion.item.selected.border.bottom = bg
c.colors.completion.item.selected.border.top = bg

c.colors.completion.item.selected.match.fg = org
c.colors.completion.match.fg = org
c.colors.completion.odd.bg = bg

c.colors.completion.scrollbar.bg = bg
c.colors.completion.scrollbar.fg = drk

c.colors.contextmenu.disabled.bg = None
c.colors.contextmenu.disabled.fg = None
c.colors.contextmenu.menu.bg = None
c.colors.contextmenu.menu.fg = None
c.colors.contextmenu.selected.bg = None
c.colors.contextmenu.selected.fg = None

c.colors.prompts.bg = bg
c.colors.prompts.border = '1px solid gray'
c.colors.prompts.fg = wht
c.colors.prompts.selected.bg = drk

c.colors.downloads.bar.bg = bg
c.colors.downloads.start.bg = bg
c.colors.downloads.start.fg = fg

c.colors.statusbar.normal.bg = bg
c.colors.statusbar.normal.fg = fg

c.colors.statusbar.caret.bg = bg
c.colors.statusbar.caret.fg = fg
c.colors.statusbar.caret.selection.bg = bg
c.colors.statusbar.caret.selection.fg = wht
c.colors.statusbar.command.bg = bg
c.colors.statusbar.command.fg = fg
c.colors.statusbar.insert.bg = bg
c.colors.statusbar.insert.fg = fg

c.colors.statusbar.passthrough.bg = bg
c.colors.statusbar.passthrough.fg = fg

c.colors.statusbar.progress.bg = wht
c.colors.statusbar.url.error.fg = org
c.colors.statusbar.url.fg = fg

c.colors.statusbar.url.hover.fg = org
c.colors.statusbar.url.success.http.fg = fg
c.colors.statusbar.url.success.https.fg = fg

c.colors.statusbar.url.warn.fg = 'yellow'

c.colors.hints.bg = bg
c.colors.hints.fg = fg
c.hints.border = f"1px solid {drk}"
c.colors.hints.match.fg = org

c.colors.tabs.bar.bg = bg

c.colors.tabs.even.bg = drk
c.colors.tabs.even.fg = fg
c.colors.tabs.odd.bg = drk
c.colors.tabs.odd.fg = fg

c.colors.tabs.selected.even.bg = bg
c.colors.tabs.selected.even.fg = fg
c.colors.tabs.selected.odd.bg = bg
c.colors.tabs.selected.odd.fg = fg

c.colors.tabs.indicator.error = '#00000000'
c.colors.tabs.indicator.start = '#00000000'
c.colors.tabs.indicator.stop = '#00000000'

c.colors.tabs.pinned.even.bg = 'darkseagreen'
c.colors.tabs.pinned.even.fg = wht
c.colors.tabs.pinned.odd.bg = 'seagreen'
c.colors.tabs.pinned.odd.fg = wht
c.colors.tabs.pinned.selected.even.bg = bg
c.colors.tabs.pinned.selected.even.fg = wht
c.colors.tabs.pinned.selected.odd.bg = bg
c.colors.tabs.pinned.selected.odd.fg = wht
