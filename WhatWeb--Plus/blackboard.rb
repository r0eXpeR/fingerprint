Plugin.define do
    name "blackboard" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :mmh3 => '-1593651747'     },
    { :mmh3 => '-1593651747'    },
    { :search => "headers", :text => 'X-Blackboard-Appserver'     },
    { :search => "headers", :text => 'X-Blackboard-Product'     }
]
end