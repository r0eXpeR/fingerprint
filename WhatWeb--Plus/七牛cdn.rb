Plugin.define do
    name "七牛cdn" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'cdn.staticfile.org'   },
    { :search => "headers", :text => 'glb.clouddn.com'   },
    { :search => "headers", :text => 'glb.qiniucdn.com'   },
    { :text => 'cdn.staticfile.org'   },
    { :text => 'glb.clouddn.com'   },
    { :text => 'glb.qiniucdn.com'   }
]
end