Plugin.define do
    name "leanplum" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :search => 'body', :regexp => /npm.leanplum-sdk\@([\d.]+)/  }
]
end