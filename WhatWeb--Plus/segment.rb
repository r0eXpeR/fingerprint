Plugin.define do
    name "segment" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /.segment-wrapper\.min\.js/  },
    { :search => 'body', :regexp => /cdn\.segment\.com.analytics\.js/  }
]
end