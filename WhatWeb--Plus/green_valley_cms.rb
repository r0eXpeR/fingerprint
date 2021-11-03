Plugin.define do
    name "green_valley_cms" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /.content\.jsp\?objectid=/, :search => 'body'  },
    { :regexp => /<img[^>]+.dsresource\?objectid=/  }
]
end