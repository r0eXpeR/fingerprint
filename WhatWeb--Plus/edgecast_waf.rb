Plugin.define do
    name "edgecast_waf" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers', :text => 'SERVER'  },
    { :status => '400', :search => 'headers', :text => 'ECDF'  }
]
end