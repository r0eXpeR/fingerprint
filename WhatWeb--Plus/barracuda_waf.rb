Plugin.define do
    name "barracuda_waf" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers', :text => 'Barracuda'  },
    { :search => 'headers', :text => 'barra_counter_session='  }
]
end