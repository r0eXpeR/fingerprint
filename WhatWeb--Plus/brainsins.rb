Plugin.define do
    name "brainsins" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /mw\.brainsins\.com/  },
    {:offset => 1, :regexp => /cloudfront\.net.brainsins(?:_v)?(\d+)\.js/, :search => 'body'  }
]
end