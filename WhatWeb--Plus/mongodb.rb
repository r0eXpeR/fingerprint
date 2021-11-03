Plugin.define do
name "MongoDB"
authors [
  "Steve 'Ashcrow' Milner",

]
version "0.1"
description "Identifies the admnistration console of MondoDB. http://www.mongodb.org/"
matches [
    {:name=>"Commands",
 :certainty=>75,
 :text=>'<a href="/buildInfo?text=1" title="get version #, etc.
{ buildinfo:1 }">buildInfo</a> <a href="/cursorInfo?text=1" title=" example: { cursorInfo : 1 }">cursorInfo</a>'},
    {:name=>"Info",
 :certainty=>100,
 :regexp=>/<pre>db version v[\d\.]+, pdfile version [\d\.]+\ngit hash:/,
 :version=>/<pre>db version v([\d\.]+){1}/},
    {:name=>"Title",
 :certainty=>75,
 :regexp=>/<title>mongod [^<]+<\/title>/},
    {:text=>'<a href="/_replSet">Replica set status</a></p>'}
]
end
