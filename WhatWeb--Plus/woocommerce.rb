Plugin.define do
    name "woocommerce" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :regexp => /.woocommerce(?:\.min)?\.js(?:\?ver=([0-9.]+))?/, :search => 'body'  },
    { :regexp => /<!-- WooCommerce/  },
    {:offset => 1, :regexp => /<link rel='[^']+' id='woocommerce-(?:layout|smallscreen|general)-css'  href='https?:..[^.]+.wp-content.plugins.woocommerce.assets.css.woocommerce(?:-layout|-smallscreen)?\.css?ver=([\d.]+)/  },
    {:offset => 1, :regexp => /WooCommerce ([\d.]+)/, :search => 'body'  }
]
end