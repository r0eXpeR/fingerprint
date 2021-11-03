Plugin.define do
    name "bluefish" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /Bluefish(?:\s([\d.]+))?/,:offset => 1, :search => 'body'  }
]
end