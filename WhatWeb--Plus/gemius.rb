Plugin.define do
    name "gemius" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :certainty => 30, :search => 'body', :regexp => /xgemius\.js/  },
    { :regexp => /<a [^>]*onclick="gemius_hit/  },
    { :regexp => /hit\.gemius\.pl.xgemius\.js/, :search => 'body'  },
    { :regexp => /hit\.gemius\.pl/, :search => 'body', :certainty => 80  }
]
end