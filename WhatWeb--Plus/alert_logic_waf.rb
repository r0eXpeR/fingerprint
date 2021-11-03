Plugin.define do
    name "alert_logic_waf" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => '<title>Requested URL cannot be found</title>'  },
    { :text => 'Reference ID'  },
    { :text => 'We are sorry'  }
]
end