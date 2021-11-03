Plugin.define do
    name "jquery_devbridge_autocomplete" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :search => 'body', :regexp => /.jquery\.devbridge-autocomplete.([0-9.]+).jquery\.autocomplete(?:.min)?\.js/  },
    { :search => 'body', :regexp => /.devbridgeAutocomplete(?:-min)?\.js/  }
]
end