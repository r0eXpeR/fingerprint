Plugin.define do
    name "codeigniter_waf" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :status => '400', :text => 'the uri you submitted has disallowed characters'  }
]
end