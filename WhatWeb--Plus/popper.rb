Plugin.define do
    name "popper" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /.popper\.js.([0-9.]+)/, :search => 'body',:offset => 1  },
    { :regexp => /<script [^>]*src="[^"]*.popper\.js.([0-9.]+)/,:offset => 1  }
]
end