Plugin.define do
    name "big_cartel" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /Big Cartel/, :search => 'body'  }
]
end