Plugin.define do
    name "prettyphoto" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /(?:<link [^>]*href="[^"]*prettyPhoto(?:\.min)?\.css|<a [^>]*rel="prettyPhoto)/  },
    { :search => 'body', :regexp => /jquery\.prettyPhoto\.js/  }
]
end