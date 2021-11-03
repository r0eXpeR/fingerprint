Plugin.define do
    name "前端公共库cdn" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'libs.cdnjs.net'   },
    { :text => 'libs.cdnjs.net'   }
]
end