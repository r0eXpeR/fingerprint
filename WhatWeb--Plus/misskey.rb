Plugin.define do
    name "misskey" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<!-- Thank you for using Misskey! @syuilo -->/  },
    { :search => 'body', :regexp => /Misskey/  }
]
end