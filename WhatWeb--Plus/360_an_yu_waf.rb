Plugin.define do
    name "360_an_yu_waf" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => 'AnYu- the green channel'  },
    { :text => 'Sorry! your access has been intercepted by AnYu'  }
]
end