Plugin.define do
    name "shoptet" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<link [^>]*href="https?:..cdn\.myshoptet\.com./  },
    { :regexp => /^Shoptet/, :search => 'body'  },
    { :search => 'body', :regexp => /^https?:..cdn\.myshoptet\.com./  }
]
end