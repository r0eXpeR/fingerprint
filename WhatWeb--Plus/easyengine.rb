Plugin.define do
    name "easyengine" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :search => 'headers[x-powered-by]', :regexp => /^EasyEngine (.*)$/  }
]
end