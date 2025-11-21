// ==UserScript==
// @name           Twitter to Nitter redirector
// @namespace      mamg22's userscripts
// @match          https://x.com/*
// @match          https://reddit.com/*
// @match          https://*.reddit.com/*
// @match          https://pinterest.com/*
// @match          https://*.pinterest.com/*
// @run-at         document-start
// ==/UserScript==

const urlHostname  =  window.location.hostname;

const nitterInstances = [ "nitter.privacyredirect.com" ]
const redlibInstances = [ "redlib.privacyredirect.com", "redlib.catsarch.com", "redlib.orangenet.cc"]
const binternetInstances = [ "bn.bloat.cat" ]

function removewww(url) {
     return url.replace("https://www.", "https://");
}

let result = "";

switch(urlHostname) {
    case "x.com":
        result = location.href.replace("x.com", nitterInstances[0]);
        break;

    case urlHostname.includes("reddit.com") ? urlHostname : 0:
        result = location.href.replace("reddit.com", redlibInstances[1]);
        break;

    case urlHostname.includes("pinterest.com") ? urlHostname : 0:
        const tmp = location.href.replace("https://www.", "https://");
        result = tmp.replace("pinterest.com", binternetInstances[0]);
        break;
}

location.href = removewww(result);

