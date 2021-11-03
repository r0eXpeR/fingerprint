Plugin.define do
    name "apptus" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :regexp => /cdn\.esales\.apptus\.com.+(?:apptus-esales-api-([\d.]+))\.min\.js/, :search => 'body'  }
]
end