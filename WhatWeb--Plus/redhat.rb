Plugin.define do
    name "redhat" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'Red Hat'   },
    { :search => "headers", :text => 'Redhat'   }
]
end