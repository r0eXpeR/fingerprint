Plugin.define do
name "OpenID"
authors [
  "Caleb Anderson",

]
version "0.1"
description "openid detection"
matches [
{:name=>"openid",
:regexp=>/<link [^>]*rel=['"](openid\.server|openid\.delegate)['"][^>]*>/i
},
]
end
