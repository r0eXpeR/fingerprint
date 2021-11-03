Plugin.define do
    name "fingerprintjs" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :regexp => /.fingerprintjs@(\d)/, :search => 'body'  },
    {:offset => 1, :regexp => /fingerprint(\d)?(?:\.min)?\.js/, :search => 'body'  }
]
end