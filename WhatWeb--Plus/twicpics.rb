Plugin.define do
    name "twicpics" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /.+\.twic\.pics/  },
    { :search => 'headers[server]', :regexp => /^TwicPics.\d+\.\d+\.\d+$/  }
]
end