Plugin.define do
    name "apache_generic_waf" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :status => '403', :text => 'was not found on this server'  },
    { :status => '403', :text => 'you don.t have permission to access'  }
]
end