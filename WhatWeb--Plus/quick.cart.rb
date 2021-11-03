Plugin.define do
    name "quick.cart" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<a href="[^>]+opensolution\.org.">(?:Shopping cart by|Sklep internetowy)/  },
    { :regexp => /Quick\.Cart(?: v([\d.]+))?/, :search => 'body',:offset => 1  }
]
end