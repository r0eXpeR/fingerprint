Plugin.define do
    name "inwemo" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /https?:..cdn\.inwemo\.com.inwemo\.min\.js/  }
]
end