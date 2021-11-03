Plugin.define do
    name "doubleclick_for_publishers_(dfp)" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /googletagservices\.com.tag.js.gpt(?:_mobile)?\.js/  }
]
end