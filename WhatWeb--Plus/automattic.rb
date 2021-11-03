Plugin.define do
    name "automattic" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /(?:automattic\.com.jobs|wpvip\.com.careers)/, :search => 'headers[x-hacker]'  }
]
end