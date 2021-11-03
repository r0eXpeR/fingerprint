Plugin.define do
    name "criteo" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /..static\.criteo\.net.js.ld.ld\.js/, :search => 'body'  },
    { :search => 'body', :regexp => /..(?:cas\.criteo\.com|(?:[^.]\.)?criteo\.net)./  }
]
end