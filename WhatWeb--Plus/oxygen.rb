Plugin.define do
    name "oxygen" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<body class=(?:"|')[^"']*oxygen-body/  },
    { :regexp => /<link [^>]*href=(?:"|')[^>]*wp-content.plugins.oxygen./  },
    { :search => 'body', :regexp => /wp-content.plugins.oxygen/  }
]
end