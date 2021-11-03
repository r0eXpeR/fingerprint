Plugin.define do
    name "sulu" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :regexp => /Sulu.?(.+)?$/, :search => 'headers[x-generator]'  }
]
end