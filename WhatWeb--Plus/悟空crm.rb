Plugin.define do
    name "悟空crm" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => '/Public/js/5kcrm.js'   },
    { :text => '悟空CRM'   },
    { :url => '/public/ico/favicon.png', :md5 => '834089ffa1cd3a27b920a335d7c067d7'   },
    { :url => '/public/js/php/file_manager_json.php', :md5 => 'c64fd0278d72826eb9041773efa1f587'   }
]
end