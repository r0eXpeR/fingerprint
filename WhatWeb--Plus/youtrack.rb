Plugin.define do
    name "youtrack" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /no-title="YouTrack">/  },
    { :regexp => /type="application.opensearchdescription\+xml" title="YouTrack".>/  },
    {:offset => 1, :regexp => /data-reactid="[^"]+">youTrack ([0-9.]+)</  }
]
end