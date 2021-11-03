Plugin.define do
    name "inspectlet" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<!-- (?:Begin|End) Inspectlet Embed Code -->/  },
    { :regexp => /cdn\.inspectlet\.com/, :search => 'body'  }
]
end