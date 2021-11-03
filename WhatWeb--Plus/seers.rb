Plugin.define do
    name "seers" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /seersco.com.script.cb\.js/, :search => 'body'  }
]
end