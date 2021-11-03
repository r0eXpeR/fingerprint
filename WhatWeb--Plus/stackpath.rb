Plugin.define do
    name "stackpath" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :regexp => /^StackCDN(?: ([\d.]+))?/, :search => 'headers[x-provided-by]'  },
    { :search => 'headers[x-backend-server]', :regexp => /hosting\.stackcp\.net$/  }
]
end