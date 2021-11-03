Plugin.define do
    name "miva" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /filename=(?:mvga\.js|MivaEvents\.js)/, :search => 'headers[content-disposition]'  },
    { :regexp => /mvga\.js/, :search => 'body'  }
]
end