Plugin.define do
    name "segmanta" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :search => 'body', :regexp => /pge\.segmanta\.com.widget_embed_js(?:.widgetEmbed-v([\d.]+)\.min\.js)?/  }
]
end