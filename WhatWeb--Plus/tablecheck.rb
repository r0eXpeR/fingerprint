Plugin.define do
    name "tablecheck" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /tc_widget\.js/  }
]
end