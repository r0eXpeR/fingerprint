Plugin.define do
    name "ccv_shop" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /.website.JavaScript.Vertoshop\.js/  }
]
end