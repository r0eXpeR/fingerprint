Plugin.define do
    name "sucuri" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'Sucuri/Cloudproxy'   }
]
end