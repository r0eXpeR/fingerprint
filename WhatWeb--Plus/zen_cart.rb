Plugin.define do
    name "zen_cart" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'Set-Cookie: zenid='    },
    { :search => 'body', :regexp => /Zen Cart/   },
    { :text => 'shopping cart program by Zen Cart'    }
]
end