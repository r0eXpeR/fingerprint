Plugin.define do
    name "dayrui系列产品" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'dr_ci_session'   },
    { :text => 'dayrui/statics'   }
]
end