Plugin.define do
    name "horde_email" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :url => '/login.php', :text => 'The Horde Project'   }
]
end