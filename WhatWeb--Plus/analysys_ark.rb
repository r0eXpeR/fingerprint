Plugin.define do
    name "analysys_ark" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :search => 'body', :regexp => /AnalysysFangzhou_JS_SDK\.min\.js\?v=([\d.]+)/  }
]
end