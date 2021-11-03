Plugin.define do
    name "google_cloud" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /^1\.1 google$/, :search => 'headers[via]'  }
]
end