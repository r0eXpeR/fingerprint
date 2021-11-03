Plugin.define do
    name "zeuscart" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<form name="product" method="post" action="[^"]+\?do=addtocart&prodid=\d+"(?!<\.form>.)+<input type="hidden" name="addtocart" value="\d+">/  }
]
end