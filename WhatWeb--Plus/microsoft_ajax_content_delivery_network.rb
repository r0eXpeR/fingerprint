Plugin.define do
    name "microsoft_ajax_content_delivery_network" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'ajax.aspnetcdn.com/ajax'   },
    { :text => 'ajax.aspnetcdn.com/ajax'   }
]
end