Plugin.define do
    name "e-office" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'general/login/index.php'   },
    { :text => '/general/login/view//images/updateLoad.gif'   }
]
end