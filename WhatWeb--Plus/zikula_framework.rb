Plugin.define do
    name "zikula_framework" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'ZIKULASID1'   },
    { :search => "headers", :text => 'ZIKULASID2'   },
    { :search => "headers", :text => 'ZIKULASID3'   }
]
end