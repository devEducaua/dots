// ==UserScript==
// @name           Redirect some sites to alternatives
// @namespace      indu
// @match          https://x.com/*
// @match          https://reddit.com/*
// @match          https://*.reddit.com/*
// @match          https://pinterest.com/*
// @match          https://*.pinterest.com/*
// @match          https://imgur.com/*
// @match          https://*.imgur.com/*
// @match          https://*.fandom.com/*
// @run-at         document-start
// ==/UserScript==

function removewww(s) {
    if (s.startsWith("https://www.")) return s.replace("https://www.", "https://");
    return s;
}

const nitterInstances = [ "nitter.privacyredirect.com" ];
const redlibInstances = [ "redlib.privacyredirect.com", "redlib.catsarch.com", "redlib.orangenet.cc", "localhost:3669" ];
const binternetInstances = [ "bn.bloat.cat" ];
const breezewikiInstances = [ "breezewiki.com", "breezewiki.catsarch.com", "breezewiki.nadeko.net", "breezewiki.private.coffee" ];
const rimgoInstances = [ "rimgo.bloat.cat", "rimgo.catsarch.com" ];
const invidiousInstances = [ "localhost:8543" ];

let result = "";
const { host, href } = window.location;

if (host === "x.com") {
    result = href.replace("x.com", nitterInstances[0]);
}

else if (host.includes("youtube.com")) {
    result = href.replace("youtube.com", invidiousInstances[0]);
}

else if (host.includes("reddit.com")) {
    // result = href.replace("reddit.com", redlibInstances[3]);
    result = href.replace("https://www.reddit.com", `http://${redlibInstances[3]}`);
}

else if (host.includes("pinterest.com")) {
    result = href.replace("pinterest.com", binternetInstances[0]);
}

else if (host.includes("fandom.com")) {
    result = href.replace("fandom.com", breezewikiInstances[0]);
}

else if (host.includes("imgur.com")) {
    result = href.replace("imgur.com", rimgoInstances[0]);
}

if (result && result !== href) location.replace(removewww(result));

// if (result) location.href = removewww(result);
