Plugin.define do
name "WebEye-Network-Camera"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "WebEye network camera web frontend"
website "http://www.webgateinc.com/"
matches [
{ :text=>'<title>WebEye User Login</title>' },
{ :text=>'<title>WebEye Java Applet Page</title>' },
{ :text=>'<title>WebEye Index Page</title>' },
{ :text=>'<meta name="Author" content="WebGateInc">' },
{ :text=>'<meta name="generator" content="WebGateInc">' },
{ :text=>'<p>Click <a href="./login.ml?FORM_METHOD=get">here</a> if you have a problem to login ...' },
{ :text=>'			  <applet archive="/wg_jwebeye.jar" code=WebEyeApplet.class codebase=. width=720 height=773> \\' },
]
end
