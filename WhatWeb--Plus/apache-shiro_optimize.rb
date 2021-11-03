##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# https://www.morningstarsecurity.com/research/whatweb
##
Plugin.define do
name "Apache-Shiro"
authors [
  "winezero", 
]
version "0.1"
description "Apache Shiro Framework."
website "http://www.springsource.org/"

matches [
{ :search => "headers", :regexp => /=deleteMe|rememberMe=|remember=|remeberMe=|=delete/ },
] 


passive do
    m=[]
    #重写自定义头的报文重放
    #@base_uri.to_s 获取当前请求的URL 
    @uri = URI.parse(Addressable::URI.encode(@base_uri.to_s))
    #@base_uri.to_s 解析当前请求的URL
    getthis = @uri.path + (@uri.query.nil? ? '' : '?' + @uri.query)
    
    #基于当前的请求配置增加Cookie头参数,不需要设置其他的参数
    $CUSTOM_HEADERS["Cookie"]  = "rememberMe=1;remeberMe=1;remember=1" 
      
    #设置请求头
    req = ExtendedHTTP::Get.new(getthis, $CUSTOM_HEADERS)
    
    #判断是否使用代理,不加的话会不使用代理的
    if $USE_PROXY == true
        http = ExtendedHTTP::Proxy($PROXY_HOST, $PROXY_PORT, $PROXY_USER, $PROXY_PASS).new(@uri.host, @uri.port)
    else
        http = ExtendedHTTP.new(@uri.host, @uri.port)
    end
    
    #接受响应详细
    res = http.request(req)
    #@raw_headers = http.raw.join("\n")
    #@raw_headers = Helper::convert_to_utf8(@raw_headers)
    @headers = {}
    #@body = res.body
    res.each_header do |x, y| 
        newx, newy = x.dup, y.dup
        @headers[ Helper::convert_to_utf8(newx) ] = Helper::convert_to_utf8(newy)
    end
    if @headers=~/rememberMe=|remember=|remeberMe=|=deleteMe|=delete/ 
        m << {}
    end
    # Return aggressive matches
    m
end

end

