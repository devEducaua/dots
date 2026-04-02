// ==UserScript==
// @name    Userstyle (chatgpt.css)
// @include    *chatgpt.com*
// ==/UserScript==
GM_addStyle(`:root {
    --primary: #000000;
    --secondary: #111111;
    --tertiary: #222222;
}

*,
.corner-superellipse\/1\.1 {
    border-radius: 4px !important;
}

#page-header,
a.group.flex.gap-2.p-2\.5.text-sm.cursor-pointer.rounded-lg.px-2,
div.px-1.text-pretty.whitespace-pre-wrap,
button.composer-btn[aria-label="Botão de ditado"] {
    display: none !important;
}

@layer utilities {
    .dark\:bg-\[\#303030\]:is(.dark *) {
        background-color: var(--secondary);
    }
}

@layer base {
    .dark {
        --main-surface-primary: var(--primary);
        --sidebar-surface-primary: var(--primary);
        --sidebar-surface-secondary: var(--primary);
        --sidebar-surface-tertiary: var(--secondary);
        --message-surface:var(--secondary);
    }
}

.dark {
    --bg-elevated-secondary: var(--black);
    --bg-primary: var(--black);
}
`)