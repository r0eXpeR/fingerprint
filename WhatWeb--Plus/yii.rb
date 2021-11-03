Plugin.define do
    name "yii" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /.assets.[a-zA-Z0-9]{8}\.yii\.js$/, :search => 'body'   },
    { :regexp => /.yii\.(?:validation|activeForm)\.js/, :search => 'body'   },
    { :regexp => /<!\[CDATA\[YII-BLOCK-(?:HEAD|BODY-BEGIN|BODY-END)\]/   },
    { :regexp => /<input type="hidden" value="[a-zA-Z0-9]{40}" name="YII_CSRF_TOKEN" \.>/   },
    { :regexp => /Powered by <a href="http:..www\.yiiframework\.com." rel="external">Yii Framework<.a>/   },
    { :search => "headers", :text => 'YII_CSRF_TOKEN'    }
]
end