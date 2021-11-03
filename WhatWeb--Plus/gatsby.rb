Plugin.define do
    name "gatsby" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :search => 'body', :regexp => /^Gatsby(?: ([0-9.]+))?$/  },
    { :regexp => /<div id="___gatsby">/  },
    { :regexp => /<style id="gatsby-inlined-css">/  }
]
end