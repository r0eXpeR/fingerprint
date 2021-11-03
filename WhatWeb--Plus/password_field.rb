Plugin.define do
name "PasswordField"
authors [
  "Caleb Anderson",

]
version "0.1"
description "find password fields"
matches [
{:name=>"rss link type", :regexp=>/<input [^>]*?type=["']password["'][^>]*>/i },
]
passive do
    m=[]
    fields=@body.scan(/<input [^>]*?type=["']password["'][^>]*>/i)
    fields.each do |field|
        name=field.scan(/name=["'](.*?)["']/i).first.first rescue nil 
        m << {:name=>"field name",:string=>name} unless name.nil?
    end
    return m
end
end
