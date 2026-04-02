// ==UserScript==
// @name    Userstyle (better.github.css.js)
// @include    *github.com/*
// ==/UserScript==
GM_addStyle(`// ==UserScript==
// @name    Userstyle (better.github.css)
// @include    https://github.com/*
// ==/UserScript==
GM_addStyle(`@media (prefers-color-scheme: dark) {
    [data-color-mode][data-color-mode="auto"][data-dark-theme="dark"], [data-color-mode][data-color-mode="auto"][data-dark-theme="dark"] ::backdrop {
        --bgColor-default: #000000;
        --borderColor-default: #000000;
    }
}`
`)