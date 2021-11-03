Plugin.define do
    name "angular框架" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => 'src="angular.js'   },
    { :text => 'src="angular.min.js'   }
]
end