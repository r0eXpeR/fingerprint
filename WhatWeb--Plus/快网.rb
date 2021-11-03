Plugin.define do
    name "快网" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'Fw-Via:'   }
]
end