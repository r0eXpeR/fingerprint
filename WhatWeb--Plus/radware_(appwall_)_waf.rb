Plugin.define do
    name "radware_(appwall_)_waf" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :status => '403', :text => 'You are seeing this regex because we have detected unauthorized activity'  },
    { :status => '403', :text => 'mailto:CloudWebSec@radware.com'  },
    { :status => '403', :text => 'with the following case number in its subject:'  }
]
end