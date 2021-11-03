Plugin.define do
    name "alpine.js" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /.alpine(?:\.min)?\.js/, :search => 'body'  },
    { :regexp => /<[^>]+[^\w-]x-data[^\w-][^<]+/, :certainty => 75  }
]
end