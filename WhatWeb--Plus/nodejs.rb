Plugin.define do
    name "nodejs" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'X-Powered-By: Express'   },
    { :search => "headers", :text => 'node.js'   },
    { :search => "headers", :text => 'pump.io'   }
]
end