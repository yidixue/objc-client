#
# Be sure to run `pod lib lint SwaggerClient.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    s.name             = "BizSwaggerClient"
    s.version          = "1.0.0"

    s.summary          = "领商-对外开放服务API"
    s.description      = <<-DESC
                         提供领商对外开放服务所有Restful接口
                         DESC

    s.platform     = :ios, '7.0'
    s.requires_arc = true

    s.framework    = 'SystemConfiguration'

    s.homepage     = "https://github.com/yidixue/objc-client"
    s.license      = "Proprietary"
    s.source       = { :git => "https://github.com/yidixue/objc-client.git", :tag => "#{s.version}" }
    s.author       = { "yidixue" => "partylike@126.com" }

    s.source_files = 'SwaggerClient/**/*.{m,h}'
    s.public_header_files = 'SwaggerClient/**/*.h'


    s.dependency 'AFNetworking', '~> 3'
    s.dependency 'JSONModel', '~> 1.2'
    s.dependency 'ISO8601', '~> 0.6'
end

