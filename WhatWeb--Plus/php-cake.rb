Plugin.define do
name "PHPCake"
authors [
  "Andrew Horton",

]
version "0.2"
description "PHP MVC web framework"
passive do
  m=[]
  m << {:name=>"CAKEPHP Cookie" } if @headers["set-cookie"] =~ /CAKEPHP=.*/
  m
end
end
