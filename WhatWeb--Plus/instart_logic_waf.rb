Plugin.define do
    name "instart_logic_waf" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers', :text => 'X-Instart-CacheKeyMod'  },
    { :search => 'headers', :text => 'X-Instart-Request-ID'  },
    { :text => 'instartrequestid'  }
]
end