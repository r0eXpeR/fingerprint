Plugin.define do
    name "webknight_waf" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :status => '999', :search => 'headers', :text => 'WebKnight'  },
    { :status => '999', :text => 'AQTRONIX WebKnight'  },
    { :status => '999', :text => 'WebKnight Application Firewall Alert'  }
]
end