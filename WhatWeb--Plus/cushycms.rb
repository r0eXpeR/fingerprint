Plugin.define do
    name "cushycms" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => '_cushy_session'   },
    { :text => 'Powered by CushyCMS'   }
]
end