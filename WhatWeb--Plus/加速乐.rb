Plugin.define do
    name "加速乐" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => '__jsluid'   }
]
end