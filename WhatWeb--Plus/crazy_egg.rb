Plugin.define do
    name "crazy_egg" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /script\.crazyegg\.com.pages.scripts.\d+.\d+\.js/  }
]
end