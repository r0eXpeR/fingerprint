Plugin.define do
name "SillySmart"
authors [
  "Guillaume Delacour <gui@iroqwa.org>", 

]
version "0.1"
description "SillySmart is a lightweight and flexible MVC Framework written in PHP5 based on XML/XSL's parsing."
dorks [
'intext:"var slsBuild ="',
]
matches [
{ :certainty=>85, :text=>'var slsBuild' },
]
end
