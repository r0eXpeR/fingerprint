Plugin.define do
    name "pelican" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /powered by <a href="[^>]+getpelican\.com/  },
    { :regexp => /powered by <a href="https?:..pelican\.notmyidea\.org/  }
]
end