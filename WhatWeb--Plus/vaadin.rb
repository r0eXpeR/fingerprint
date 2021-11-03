Plugin.define do
    name "vaadin" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :search => 'body', :regexp => /vaadinBootstrap\.js(?:\?v=([\d.]+))?/  }
]
end