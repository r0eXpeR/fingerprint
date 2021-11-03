Plugin.define do
    name "yui_doc" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /(?:<html[^>]* yuilibrary\.com.rdf.[\d.]+.yui\.rdf|<body[^>]+class="yui3-skin-sam)/  }
]
end