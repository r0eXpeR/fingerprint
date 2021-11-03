Plugin.define do
    name "docusaurus" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :regexp => /^Docusaurus(?: v(.+))?$/, :search => 'body'  }
]
end