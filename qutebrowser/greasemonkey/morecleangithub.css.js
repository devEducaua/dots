// ==UserScript==
// @name    Userstyle (morecleangithub.css)
// @include    *github.com*
// ==/UserScript==
GM_addStyle(`/* THIS IS NOT MADE BY ME */

.UnderlineNav-octicon,
.ActionListItem-action,
.ActionListItem-visual,
[data-component = "leadingVisual"],
#repository-details-container .octicon:not(.octicon-triangle-down),
[for = "AppHeader-searchInput"],
.octicon.octicon-search,
.tabnav-tabs .octicon,
.width-full.BtnGroup button:not([aria-label *= "Close as not planned"]) .octicon,
.Button-content .Button-leadingVisual .octicon:not(.octicon-plus),
[class *= NavigationList] [data-component = "icon"],
.State .octicon,
.Box-row .flex-items-center .octicon:not(.octicon-check-circle-fill):not(.octicon-x-circle-fill),
.Link--muted .octicon:not(.octicon-star):not(.octicon-repo-forked):not(.octicon-issue-opened.mr-1):not(.octicon-git-pull-request.mr-1),
.Link--secondary .octicon,
.feed-filter-menu .octicon,
.octicon-tag,
.octicon-link,
[role = "menuitem"] [class ^= Box]:has(.octicon),
.octicon-git-branch,
.octicon-heart,
.js-profile-editable-area div.mb-3 > *:not(.Link--secondary) .octicon,
[class *= Item__LiBox] span:has(svg),
.Item__LiBox:has([content = "Try Enterprise"]),
.flash:not(.Banner) div.gap-2 .octicon,
.vcard-details .vcard-detail .octicon:not(.octicon-organization, .octicon-location),
.filter-item span,
.js-notifications-group .btn-sm span:has(.octicon[aria-hidden = "true"]),
.d-flex.flex-items-center.color-fg-muted.mt-4.mb-6.f6.flex-justify-center .octicon[aria-hidden = "true"],
.js-notice svg[width],
summary.hover-text-link .octicon,
.SelectMenu-item-text .octicon,
.d-flex.btn.btn-sm > .mr-1,
.TimelineItem-badge,
[class *= StyledUnderlineItem] [data-component = "icon"],
[style = "color:#ededed;"] {
	display: none !important;
}

.Box-row .pl-5 {
	padding-left: 0 !important;
}

.Counter,
[class *= StyledButton],
.notifications-list-item.navigation-focus {
	background-color: transparent !important;
}

nav .selected,
nav [class *= Box-sc]:has([class *= StyledUnderlineItem][aria-current = page]) {
	background-color: #21262d;
	border-radius: 6px;
	color: var(--fgColor-default);
	display: inline-block;
	font-weight: var(--base-text-weight-medium);
	min-width: var(--base-size-40);
	text-align: center;
	border: none;
}

nav .selected span,
nav [class *= Box-sc]:has([class *= StyledUnderlineItem][aria-current = page]) span[data-component = text] {
	font-weight: 400;
}

nav .selected::after,
nav [class *= Box-sc] [class *= StyledUnderlineItem]::after {
	background: transparent !important;
}

[aria-labelledby = "folders-and-files"] div[class ^= Box]:has([data-testid = "latest-commit-details"]) {
	background: transparent;
	border: 1px solid var(--control-borderColor-rest, var(--borderColor-default, var(--color-border-default, #30363d)));
	border-radius: 6px;
}

.Box-footer > a {
	border: 1px solid var(--control-borderColor-rest, var(--borderColor-default, var(--color-border-default, #30363d)));
	border-radius: 6px;
	width: 100%;
	height: 40px;
	text-align: center;
	display: flex;
	justify-content: center;
	flex-direction: column;
}

[aria-labelledby = "folders-and-files"],
[aria-labelledby = "folders-and-files"] tbody tr:nth-child(2) td {
	padding-top: 10px;
}

[aria-label = "Repository files"] {
	padding-top: 30px;
}

.color-shadow-large {
	border: 1px solid var(--control-borderColor-rest, var(--borderColor-default, var(--color-border-default, #30363d))) !important;
	box-shadow: none !important;
}

.p-3 {
	padding: 0 !important;
	padding-top: var(--base-size-16, 16px) !important;
	padding-bottom: var(--base-size-16, 16px) !important;
}

.feed-item-content .px-3 {
	padding: 0 !important;
}

.TimelineItem-badge {
	width: 0px;
}

.repository-container-header .Label--secondary {
	position: absolute;
}

#repos-sticky-header > div,
#notification-shelf {
	background: var(--bgColor-default) !important;
}

[aria-label = "File view"] {
	background: transparent;
}

[aria-label = "File view"] [aria-current = "true"] .segmentedControl-content {
	font-weight: var(--base-text-weight-medium);
	background-color: #21262d;
}

[aria-label = "File view"] [aria-current = "true"] .segmentedControl-content .segmentedControl-text {
	font-weight: var(--base-text-weight-normal);
}

[aria-label = "File view"] .segmentedControl-content {
	border-color: transparent !important;
}

[class ^= ButtonGroup] *,
action-menu *,
[aria-label = "More file actions"] {
	border-color: transparent !important;
}

.Box--condensed .Box-row {
	padding: calc(var(--stack-padding-condensed) + 2px) 0;
}

.Box-row {
	padding: var(--stack-padding-normal) 0;
}

.gh-header-actions .Button--primary,
.gh-header-actions .Button--primary:hover:not(:disabled, .Button--inactive) {
	background: transparent;
	color: var(--button-default-fgColor-rest);
	fill: var(--fgColor-muted);
	border-color: var(--button-default-borderColor-rest);
	box-shadow: var(--button-default-shadow-resting), var(--button-default-shadow-inset);
}

.State--open {
	background: transparent;
	border: var(--bgColor-open-emphasis, var(--color-open-emphasis)) 2px solid;
}

.State--merged {
	background: transparent;
	border: var(--bgColor-done-emphasis, var(--color-done-emphasis)) 2px solid;
}

.State--closed {
	background: transparent;
	border: var(--bgColor-closed-emphasis, var(--color-closed-emphasis)) 2px solid;
}

.IssueLabel,
.timeline-comment.current-user .timeline-comment-header,
.flash:not(.Banner) {
	background: transparent !important;
}

.flash:not(.Banner):has(.octicon-flame) {
	border: 1px solid var(--borderColor-accent-muted) !important;
}

ul:not(.pagehead-actions) .btn:not([value = "Follow"]),
.BtnGroup-parent[action = "/notifications/beta/set_preferred_inbox_query"] .btn,
summary.btn[aria-haspopup = "menu"],
.btn {
	border-color: transparent;
}

.BtnGroup-item {
	border-radius: 6px !important;
	margin: 0px 3px;
}

.filter-item.selected,
.filter-item[aria-selected = true],
.filter-item[aria-current]:not([aria-current = false]) {
	background-color: #21262d;
	padding: 6px 15px;
	margin-left: 2px;
}

* {
	--borderColor-muted: transparent;
	--borderColor-default: transparent;
	--bgColor-inset: transparent;
	--button-default-bgColor-rest: transparent;
	--shadow-floating-small: transparent;
	--bgColor-muted: transparent;
}
`)