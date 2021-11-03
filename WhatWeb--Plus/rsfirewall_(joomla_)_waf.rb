Plugin.define do
    name "rsfirewall_(joomla_)_waf" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => 'COM_RSFIREWALL_'  },
    { :text => 'com rsfirewall 403 forbidden'  },
    { :text => 'com rsfirewall event'  }
]
end