Plugin.define do
    name "the_hut_group" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /THEHUT-.*\.js/, :search => 'body'  }
]
end