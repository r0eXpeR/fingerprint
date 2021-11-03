Plugin.define do
    name "dreambox_(tv_reciever)" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'Basic realm="dreambox'   }
]
end