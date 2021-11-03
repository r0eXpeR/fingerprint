Plugin.define do
    name "danneo_cms" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /CMS Danneo ([\d.]+)/,:offset => 1, :search => 'headers[x-powered-by]'  },
    {:offset => 1, :search => 'body', :regexp => /Danneo CMS ([\d.]+)/  }
]
end