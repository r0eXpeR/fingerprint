Plugin.define do
    name "nagios" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'Nagios access'     },
    { :serach => 'headers', :text => 'Nagios Access'     },
    { :serach => 'headers', :text => 'Nagios Access'    },
    { :text => '/nagios/cgi-bin/status.cgi'     },
    {:serach => 'headers', :text => 'nagios admin'     },
    {:serach => 'headers', :text => 'nagios admin'    }
]
end