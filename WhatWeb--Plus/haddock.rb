Plugin.define do
    name "haddock" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /haddock-util\.js/  },
    {:offset => 1, :regexp => /<p>Produced by <a href="http:..www\.haskell\.org.haddock.">Haddock<.a> version ([0-9.]+)<.p>/  }
]
end