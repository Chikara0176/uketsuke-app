class HomeController < ApplicationController
  require 'net/http'
  require 'uri'
  require 'pp'
  require 'open-uri'
  require 'json'

  def index

    # @uri = URI.parse("https://api.chatwork.com/v1")
    # open("https://api.chatwork.com/v1/my/status",
    #      "X-ChatWorkToken" => "8451e9de6e295633c6144e7ed8a2f8ae"
    #     ){|f|
    #       f.each_line{|line| p line}
    #       # binding.pry
    #     }
  end

  def show

  end

  def member
    json_file_path = 'app/assets/shikaku_contact.json'
    # 読み込んで
    @all_member = open(json_file_path) do |m|
      JSON.load(m)
    end
  end
end
