Plugin.define do
    name "easydigitaldownloads" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :search => 'body', :regexp => /^Easy Digital Downloads v(.*)$/  }
]
end