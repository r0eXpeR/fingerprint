Plugin.define do
name "reCAPTCHA"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "reCAPTCHA is a free CAPTCHA service that helps to digitize books, newspapers and old time radio shows."
website "http://www.google.com/recaptcha"
matches [
    {:regexp=>/<div[^>]+class="g-recaptcha/},
    {:regexp=>/<div[^>]+id="recaptcha_image/},
    {:regexp=>/<link[^>]+recaptcha/},
    {:regexp=>/<noscript>[\s]*<iframe src="http:\/\/www\.google\.com\/recaptcha\/api\/noscript\?k=/},
    {:regexp=>/api-secure\.recaptcha\.net/, :search=>'body'},
    {:regexp=>/recaptcha_ajax\.js/, :search=>'body'},
    {:search=>'body', :regexp=>/.recaptcha.api\.js/},
    {:text=>'recaptcha_ajax.js'}
]
end
