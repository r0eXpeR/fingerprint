Plugin.define do
    name "project_wonderful" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<div[^>]+id="pw_adbox_/  },
    { :search => 'body', :regexp => /^https?:..(?:www\.)?projectwonderful\.com.(?:pwa\.js|gen\.php)/  }
]
end