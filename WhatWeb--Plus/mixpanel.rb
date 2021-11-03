Plugin.define do
    name "mixpanel" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :regexp => /cdn\.mxpnl\.com.libs.mixpanel\-([0-9.]+)\.min\.js/, :search => 'body'  },
    { :regexp => /api\.mixpanel\.com.track/, :search => 'body'  }
]
end