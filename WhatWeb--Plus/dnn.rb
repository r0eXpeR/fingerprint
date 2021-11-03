Plugin.define do
    name "dnn" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /.js.dnn\.js/, :search => 'body'  },
    { :regexp => /.js.dnncore\.js/, :search => 'body'  },
    { :regexp => /<!-- DNN Platform/  },
    { :regexp => /<!-- by DotNetNuke Corporation/  },
    { :regexp => /DotNetNuke/, :search => 'body'  },
    { :regexp => /DotNetNuke/, :search => 'headers[x-compressed-by]'  },
    { :regexp => /dnn_IsMobile=/, :search => 'headers[set-cookie]'  }
]
end