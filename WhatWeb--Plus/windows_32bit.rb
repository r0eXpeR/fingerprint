Plugin.define do
    name "windows_32bit" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'Win32'   }
]
end