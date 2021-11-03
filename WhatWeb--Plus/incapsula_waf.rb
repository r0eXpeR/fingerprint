Plugin.define do
    name "incapsula_waf" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers', :text => 'X-Iinfo'  },
    { :search => 'headers', :text => 'incap_ses_'  },
    { :search => 'headers', :text => 'incap_visid_83_'  },
    { :search => 'headers', :text => 'visid_incap'  },
    { :text => 'Incapsula incident ID'  }
]
end