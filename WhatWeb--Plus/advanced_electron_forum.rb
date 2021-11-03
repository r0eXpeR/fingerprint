Plugin.define do
    name "advanced_electron_forum" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'aefsid'   },
    { :text => 'Powered By AEF'   },
    { :text => 'content="aef'   }
]
end