Plugin.define do
    name "solodev" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<div class=["']dynamicDiv["'] id=["']dd\.\d\.\d(?:\.\d)?["']>/  }
]
end