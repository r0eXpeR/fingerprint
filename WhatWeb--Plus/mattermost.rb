Plugin.define do
    name "mattermost" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<noscript> To use Mattermost, please enable JavaScript\. <.noscript>/  }
]
end