// ==UserScript==
// @name    Userstyle (wikipedia.css)
// @include    *wikipedia.org*
// ==/UserScript==
GM_addStyle(`@media screen {
    html.skin-theme-clientpref-night {
        --background-color-base: #000000;
        --background-color-neutral-subtle: #000000;
        --color-progressive: #777;
        --color-visited: #555;
        --color-progressive--hover: #777;
        --color-visited--hover: #555;
    }
}
`)