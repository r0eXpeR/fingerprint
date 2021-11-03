Plugin.define do
name "Barracuda-Load-Balancer"
authors [
  "Aung Khant <http://yehg.net/>", 

  "Andrew Horton", 

]
version "0.2"
description "Barracuda Load Balancer"
website "http://www.barracudanetworks.com/ns/products/balancer_overview.php"
matches [
    {:name=>"BNI_BARRACUDA_LB_COOKIE cookie", :text=>"BNI_BARRACUDA_LB_COOKIE", :search=>"headers[set-cookie]"},
    {:name=>"BNI__BARRACUDA_LB_COOKIE cookie", :text=>"BNI__BARRACUDA_LB_COOKIE", :search=>"headers[set-cookie]"},
    {:search=>"headers", :text=>'BARRACUDA_LB_COOKIE'}
]
passive do
    m = []
    if @headers["set-cookie"] =~ /BARRACUDA_LB_COOKIE=(\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})/i
        internal_ip = @headers["set-cookie"].scan(/BARRACUDA_LB_COOKIE=(\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})/i)
        m << {:string=>'Internal IP: ' + internal_ip.to_s}        
    end    
    m
end
end
