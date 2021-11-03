Plugin.define do
    name "drupal_commerce" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ 
    { :certainty => 50, :regexp => /.profiles.commerce_kickstart.modules.contrib.commerce.modules.checkout.commerce_checkout\.js/, :search => 'body'  },
    { :certainty => 50, :regexp => /.sites.(?:all|default).modules.(?:contrib.)?commerce.modules.checkout.commerce_checkout\.js/, :search => 'body'  },
    { :certainty => 50, :search => 'body', :regexp => /.modules.(?:contrib.)?commerce.js.conditions\.js/  },
    { :regexp => /<[^>]+(?:id="block[_-]commerce[_-]cart[_-]cart|class="commerce[_-]product[_-]field)/  }
]
end