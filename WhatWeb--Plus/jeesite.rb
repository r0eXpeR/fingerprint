Plugin.define do
    name "jeesite" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :serach => 'headers', :text => 'jeesite.session.id'   }
]
end