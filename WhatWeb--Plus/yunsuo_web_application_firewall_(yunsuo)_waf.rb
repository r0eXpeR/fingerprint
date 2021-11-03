Plugin.define do
    name "yunsuo_web_application_firewall_(yunsuo)_waf" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers', :text => 'yunsuo'  },
    { :search => 'headers', :text => 'yunsuo_session'  },
    { :text => '\"yunsuologo'  }
]
end