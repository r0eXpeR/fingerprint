Plugin.define do
    name "react" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :mmh3 => '-2009722838'    },
    { :offset => 1, :search => 'body', :regexp => /.([\d.]+).react(?:\.min)?\.js/   },
    { :regexp => /<[^>]+data-react/   },
    { :search => 'body', :regexp => /^react\b.*\.js/   },
    {:offset => 1, :search => 'body', :regexp => /react(?:-with-addons)?[.-]([\d.]*\d)[^.]*\.js/   }
]
end