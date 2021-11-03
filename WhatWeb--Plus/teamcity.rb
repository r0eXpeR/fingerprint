Plugin.define do
    name "teamcity" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :regexp => /<span class="versionTag"><span class="vWord">Version<.span> ([\d\.]+)/  },
    { :regexp => /TeamCity/, :search => 'body'  }
]
end