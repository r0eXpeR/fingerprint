Plugin.define do
name "Django"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Bhavin Senjaliya <bhavin.senjaliya@gmail.com>", 

  "zr000", 

]
version "0.3"
description "Django is a high-level Python Web framework that encourages rapid development and clean, pragmatic design."
website "https://www.djangoproject.com/"
matches [
    {:certainty=>25, :search=>"headers[server]", :regexp=>/^WSGIServer\/[^\s]+ Python\/[^\s]+$/},
    {:certainty=>75, :text=>'<input type="hidden" name="this_is_the_login_form" value="1" />'},
    {:offset=>1, :regexp=>/(?:powered by <a[^>]+>Django ?([\d.]+)?<\.a>|<input[^>]*name=["']csrfmiddlewaretoken["'][^>]*>)/},
    {:regexp=>'<meta name="robots" content="NONE,NOARCHIVE"><title>Welcome to Django</title>'},
    {:regexp=>/<div id="explanation">[\s]+<p>[\s]+You're seeing this error because you have <code>DEBUG = True<\/code> in[\s]+your[\s]+Django settings file/},
    {:regexp=>/<form action="\/admin\/[^"^>]*" method="post" id="login-form"><div style='display:none;'><input type='hidden' id='csrfmiddlewaretoken' name='csrfmiddlewaretoken' value='[a-f\d]{32}' \/><\/div>/},
    {:search=>"headers[set-cookie]", :regexp=>/csrftoken/i, :name=>"csrftoken cookie"},
    {:search=>"headers[set-cookie]", :regexp=>/django_/, :name=>"django_ cookie"},
    {:string=>/<li>Start your first app by running <code>python ([^\/]+)\/manage\.py startapp \[appname\]<\/code>\.<\/li>/},
    {:text=>'__admin_media_prefix__'},
    {:text=>'csrfmiddlewaretoken'},
    {:url=>"/doesnotexist123highwaytothedangerzone", :string=>/<p>[\s]+Using the URLconf defined in <code>([^\.^\s]+)\.urls<\/code>,[\s]+Django tried these URL patterns, in this order:/}
]
end
