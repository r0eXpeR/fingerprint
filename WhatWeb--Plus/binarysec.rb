Plugin.define do
    name "binarysec" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'X-Binarysec-Via'   }
]
end