Plugin.define do
    name "aws_waf" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers', :text => 'awselb'  }
]
end