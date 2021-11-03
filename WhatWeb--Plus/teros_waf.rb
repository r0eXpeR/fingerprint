Plugin.define do
    name "teros_waf" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers', :text => 'st8id='  },
    { :search => 'headers', :text => 'st8wa='  },
    { :search => 'headers', :text => 'st8wf='  }
]
end