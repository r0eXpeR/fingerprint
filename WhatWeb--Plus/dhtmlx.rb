Plugin.define do
    name "dhtmlx" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /dhtmlxcommon\.js/, :search => 'body'  }
]
end