Plugin.define do
    name "78oa" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => '/resource/javascript/system/runtime.min.js'   },
    { :text => '78oa'   },
    { :text => 'license.78oa.com'   },
    { :text => 'src="/module/index.php'   }
]
end