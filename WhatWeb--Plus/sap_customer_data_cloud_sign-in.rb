Plugin.define do
    name "sap_customer_data_cloud_sign-in" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /\.gigya\.com.JS.gigya\.js/, :search => 'body'  }
]
end