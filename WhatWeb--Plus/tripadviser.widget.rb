Plugin.define do
    name "tripadviser.widget" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /tripadvisor\.[\w]+.WidgetEmbed/, :search => 'body'  }
]
end