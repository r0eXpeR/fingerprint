Plugin.define do
    name "phpvibe" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :url => '/index.php', :text => 'PHPVibe.com'   },
    { :url => '/tpl/main/images/lang-icon.png', :md5 => '04c21eb6971aa691184c632b79554a54'   },
    { :url => '/tpl/main/js/phpvibe_app.js', :text => 'phpVibe IS NOT FREE SOFTWARE'   }
]
end