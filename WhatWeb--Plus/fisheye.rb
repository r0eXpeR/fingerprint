Plugin.define do
    name "fisheye" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'Set-Cookie: FESESSIONID'   },
    { :text => 'fisheye-16.ico'   }
]
end