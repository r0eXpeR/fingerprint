Plugin.define do
    name "mobirise" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :search => 'body', :regexp => /^Mobirise v([\d.]+)/  },
    {:offset => 1, :regexp => /<!-- Site made with Mobirise Website Builder v([\d.]+)/  }
]
end