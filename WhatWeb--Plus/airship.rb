Plugin.define do
    name "airship" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :search => 'body', :regexp => /urbanairship\.\w+.notify.v([\d.]+)/  }
]
end