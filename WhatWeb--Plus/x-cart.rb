Plugin.define do
    name "x-cart" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<a[^>]+href="[^"]*(?:\?|&)xcart_form_id=[a-z\d]{32}(?:&|$)/  },
    { :regexp => /Powered by X-Cart(?: (\d+))? <a[^>]+href="http:..www\.x-cart\.com."[^>]*>/,:offset => 1  },
    { :search => 'body', :regexp => /.skin.common_files.modules.Product_Options.func\.js/  },
    { :search => 'headers[set-cookie]', :regexp => /[a-z\d]{32}(?:;|$)/  },
    {:offset => 1, :regexp => /X-Cart(?: (\d+))?/, :search => 'body'  }
]
end