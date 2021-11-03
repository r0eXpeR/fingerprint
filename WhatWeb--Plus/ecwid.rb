Plugin.define do
    name "ecwid" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /https:..app\.ecwid\.com.script\.js/, :search => 'body'  },
    { :regexp => /https:..app\.multiscreenstore\.com.script\.js/, :search => 'body'  }
]
end