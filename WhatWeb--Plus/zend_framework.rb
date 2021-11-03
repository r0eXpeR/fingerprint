Plugin.define do
    name "zend_framework" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'ZEND='   },
    { :search => "headers", :text => 'Zend Framework'   }
]
end