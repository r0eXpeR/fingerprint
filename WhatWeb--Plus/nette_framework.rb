Plugin.define do
    name "nette_framework" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<div[^>]+id="snippet-/  },
    { :regexp => /<input[^>]+data-nette-rules/  },
    { :regexp => /<input[^>]+id="frm-/  },
    { :regexp => /^Nette Framework/, :search => 'headers[x-powered-by]'  }
]
end