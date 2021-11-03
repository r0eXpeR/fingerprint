Plugin.define do
    name "splitbee" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /^https:..cdn\.splitbee\.io.sb\.js/  }
]
end