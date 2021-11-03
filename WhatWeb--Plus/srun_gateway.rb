Plugin.define do
    name "srun_gateway" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :url => '/css/login.css', :text => 'loginbox .aboutList li'   }
]
end