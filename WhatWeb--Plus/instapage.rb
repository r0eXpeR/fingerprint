Plugin.define do
    name "instapage" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /cdn\.instapagemetrics\.com/, :search => 'body'  },
    { :regexp => /heatmap-events-collector\.instapage\.com/, :search => 'body'  }
]
end