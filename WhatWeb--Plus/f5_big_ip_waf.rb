Plugin.define do
    name "f5_big_ip_waf" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers', :text => 'BIG-IP'  },
    { :search => 'headers', :text => 'BIGIP'  },
    { :search => 'headers', :text => 'BIGipServer'  },
    { :search => 'headers', :text => 'BigIP'  },
    { :search => 'headers', :text => 'bigipserver'  },
    { :search => 'headers', :text => 'bigipserverinternal'  },
    { :text => 'The requested URL was rejected. Please consult with your administrator'  },
    { :text => 'security.f5aas.com'  }
]
end