Plugin.define do
    name "javadoc" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<!-- Generated by javadoc -->/  }
]
end