Plugin.define do
    name "vwo" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :search => 'body', :regexp => /dev\.visualwebsiteoptimizer\.com.?([\d.]+)/  }
]
end