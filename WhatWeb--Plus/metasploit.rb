Plugin.define do
    name "metasploit" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :mmh3 => '-1235192469'     },
    { :mmh3 => '-1235192469'    },
    { :mmh3 => '-127886975'     },
    { :mmh3 => '-127886975'    },
    { :mmh3 => '1139788073'     },
    { :mmh3 => '1139788073'    },
    { :mmh3 => '579239725'     },
    { :mmh3 => '579239725'    },
    { :search => "headers", :text => 'https://dev.metasploit.com'     },
    { :text => 'Metasploit is initializing...'     },
    { :text => 'metasploit")'     }
]
end