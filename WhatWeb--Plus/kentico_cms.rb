Plugin.define do
    name "kentico_cms" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /.CMSPages.GetResource\.ashx/  },
    {:offset => 1, :regexp => /Kentico CMS ([\d.R]+ \(build [\d.]+\))/, :search => 'body'  }
]
end