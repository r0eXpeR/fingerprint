Plugin.define do
    name "marketo" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :search => 'body', :regexp => /munchkin\.marketo\.\w+.(?:([\d.]+).)?munchkin\.js/  }
]
end