Plugin.define do
    name "fudforum" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'fud_session_'   },
    { :text => '/adm/admloginuser.php'   },
    { :text => 'Powered by: FUDforum'   }
]
end