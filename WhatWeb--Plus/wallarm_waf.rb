Plugin.define do
    name "wallarm_waf" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers', :text => 'nginx-wallarm'  }
]
end