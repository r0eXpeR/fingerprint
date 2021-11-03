Plugin.define do
name "CafeEngine"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "CafeEngine is a professional CMS for cafe or restaurant web site with integrated shopping cart. It's not a set of scripts only, but allow to provide new level of service to restaurant visitors and administration. "
dorks [
'Copyright CafeEngine "2008-2009"'
]
matches [
    {:text=>'  <td id="footer">Copyright &copy; <a href="http://cafeengine.com">CafeEngine</a> 2008-2009</td>'},
    {:text=>'  <td id="footer">Copyright &copy; CafeEngine</a> 2008-2009</td>'},
    {:text=>'  <td id=footer>Copyright &copy; <a href=http://cafeengine.com>CafeEngine.com</a> 2008-2009</td>'},
    {:text=>'  win = window.open(src,"","top=20,left=20,height=" + h + ",width=" + w + ",toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=no,resizable=yes")'},
    {:text=>'/CafeEngine/style.css'},
    {:text=>'<a href=http://cafeengine.com>CafeEngine.com'}
]
end
