Plugin.define do
    name "hac_gateway" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :url => '/login.php', :text => 'HACClientSignByKey'   }
]
end