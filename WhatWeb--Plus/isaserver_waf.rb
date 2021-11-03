Plugin.define do
    name "isaserver_waf" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers', :text => 'ISASERVER'  }
]
end