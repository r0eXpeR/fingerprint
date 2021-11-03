Plugin.define do
name "Plone"
authors [
  "Andrew Horton",

]
version "0.2"
description "Plone Content Management System (CMS)"
website "http://plone.org"
dorks [
'"powered by plone"',
'inurl:"acl_users/credentials_cookie_auth/require_login?came_from"'
]
matches [
    {:name=>"URL Pattern", :certainty=>75, :ghdb=>'inurl:"acl_users/credentials_cookie_auth/require_login?came_from"'},
    {:name=>"X-Cache-Rule: plone-content-types", :search=>"headers[x-cache-rule]", :regexp=>/plone-content-types/i },
    {:name=>"X-Caching-Rule-Id: plone-content-types", :search=>"headers[x-caching-rule-id]", :regexp=>/plone-content-types/i},
    {:name=>"div tag, visual-portal-wrapper",
:certainty=>75,
:text=>'<div id="visual-portal-wrapper">'},
    {:name=>"meta generator tag",
:regexp=>/<meta name="generator" content="[^>]*http:\/\/plone.org" \/>/},
    {:name=>"plone css",
:regexp=>/(@import url|text\/css)[^>]*portal_css\/.*plone.*css(\)|")/},
    {:name=>"plone javascript",
:regexp=>/src="[^"]*ploneScripts[0-9]+.js"/},
    {:regexp=>/Plone/, :search=>'body'},
    {:search=>"headers", :text=>'plone.content'},
    {:text=>'<div class="visualIcon contenttype-plone-site">'},
    {:text=>'generator" content="Plone'}
]
end
