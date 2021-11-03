Plugin.define do
    name "snoobi" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /snoobi\.com.snoop\.php/  }
]
end