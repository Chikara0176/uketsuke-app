class HomeController < ApplicationController
  require 'net/http'
  require 'uri'
  require 'pp'
  require 'open-uri'
  require 'json'
  # require 'httpclient'

  def top
  end

  def index
    json_file_path = 'app/assets/shikaku_contact.json'
    # 読み込んで
    @all_member = open(json_file_path) do |m|
      JSON.load(m)
    end
  end

  def member

  end

  def thanks
    @c = HTTPClient.new()
    res = @c.post('https://api.chatwork.com/v1/rooms/39085887/messages', {:body => "来客です。", :X-ChatWorkToken => "8451e9de6e295633c6144e7ed8a2f8ae"} )
    # @uri = URI.parse("https://api.chatwork.com/v1")
    # open("https://api.chatwork.com/v1/my/status",
    #      "X-ChatWorkToken" => "8451e9de6e295633c6144e7ed8a2f8ae"
    #     ){|f|
    #       f.each_line{|line| p line}
    #     }
  end

end
