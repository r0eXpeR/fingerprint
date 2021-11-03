Plugin.define do
    name "choices" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :regexp => /choices\.js.|@([\d.]+)(?:.assets)?(?:.scripts)?(?:.styles)?(?:.dist)?.choices(?:\.min)?\.js|css/, :search => 'body'  }
]
end