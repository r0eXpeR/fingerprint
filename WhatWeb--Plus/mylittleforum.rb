Plugin.define do
    name "mylittleforum" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'mlf2_general_forum_usersettings'   },
    { :text => 'index.php?mode=js_defaults'   },
    { :text => 'powered by my little forum'   }
]
end