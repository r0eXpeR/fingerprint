Plugin.define do
    name "rainloop" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers[server]', :regexp => /^RainLoop/  },
    {:offset => 1, :regexp => /<link[^>]href="rainloop.v.([0-9.]+).static.apple-touch-icon\.png.>/  },
    {:offset => 1, :regexp => /^rainloop.v.([0-9.]+)./, :search => 'body'  }
]
end