Plugin.define do
    name "frontpage" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :regexp => /Microsoft FrontPage(?:\s((?:Express )?[\d.]+))?/, :search => 'body'  },
    { :search => 'body', :regexp => /^FrontPage\./  }
]
end