Plugin.define do
    name "ubnt_unifi系列路由" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => '<div class="appGlobalHeader">'   }
]
end