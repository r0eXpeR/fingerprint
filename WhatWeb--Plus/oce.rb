Plugin.define do
name "Oce"
authors [
  "Andrew Horton",

]
version "0.2"
description "Oce Print Exec Workgroup is easy-to-use, web-based print management software for job submission of sets of technical drawings to a single large format printer"
website "global.oce.com/products/print-exec-workgroup/default.aspx"
matches [
{:regexp=>/<title>Print Exec Workgroup<\/title>/i },
{:text=>'/servlet/owslhtml/owslicons/header_pewg.jpg' }
]
end
