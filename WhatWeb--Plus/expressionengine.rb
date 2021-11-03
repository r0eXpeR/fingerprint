Plugin.define do
    name "expressionengine" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'exp_last_activity'   },
    { :search => "headers", :text => 'exp_last_visit'   },
    { :text => 'exp_tracker'   }
]
end