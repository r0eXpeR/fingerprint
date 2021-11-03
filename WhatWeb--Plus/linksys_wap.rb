Plugin.define do
    name "linksys_wap" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'Linksys WAP'   }
]
end