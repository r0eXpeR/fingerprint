Plugin.define do
    name "shopatron" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :certainty => 50, :regexp => /<img[^>]+mediacdn\.shopatron\.com/  },
    { :regexp => /<body class="shopatron/  },
    { :search => 'body', :regexp => /Shopatron/  },
    { :search => 'body', :regexp => /mediacdn\.shopatron\.com/  }
]
end