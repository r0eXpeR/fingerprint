Plugin.define do
    name "windows_64bit" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'win64'   }
]
end