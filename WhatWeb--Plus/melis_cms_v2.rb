Plugin.define do
    name "melis_cms_v2" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<!-- Rendered with Melis CMS V2/  },
    { :search => 'body', :regexp => /^Melis CMS/  }
]
end