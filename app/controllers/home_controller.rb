class HomeController < ApplicationController
  require 'net/http'
  require 'uri'
  require 'pp'
  # require 'httpclient'
  require 'open-uri'
  def index
    # @uri = URI.parse("https://api.chatwork.com/v1")
    open("https://api.chatwork.com/v1/my/status",
         "X-ChatWorkToken" => "8451e9de6e295633c6144e7ed8a2f8ae"
        ){|f|
          f.each_line{|line| p line}
          # binding.pry
        }
  end

  def show

  end
end
