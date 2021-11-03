Plugin.define do
    name "uknowva" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :regexp => /uKnowva (?: ([\d.]+))?/, :search => 'body'  },
    { :regexp => /.media.conv.js.jquery\.js/, :search => 'body'  },
    { :regexp => /<a[^>]+>Powered by uKnowva<.a>/  },
    { :search => 'headers[x-content-encoded-by]',:offset => 1, :regexp => /uKnowva ([\d.]+)/  }
]
end