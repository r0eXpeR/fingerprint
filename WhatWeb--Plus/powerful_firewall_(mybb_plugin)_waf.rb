Plugin.define do
    name "powerful_firewall_(mybb_plugin)_waf" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :status => '403', :text => 'tiny cc powerful firewall'  }
]
end