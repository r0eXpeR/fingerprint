Plugin.define do
    name "plyr" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :search => 'body', :regexp => /https:..cdn\.plyr\.io.([0-9.]+)..+\.js/  }
]
end