Plugin.define do
    name "atlassian_fisheye" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<title>(?:Log in to )?FishEye (?:and Crucible )?([\d.]+)?<.title>/,:offset => 1  }
]
end