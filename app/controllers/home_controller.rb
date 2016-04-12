class HomeController < ApplicationController
  require 'net/https'
  require 'uri'
  require 'pp'
  require 'open-uri'
  require 'json'
  require 'httpclient'

  def top
  end

  def index
    # 資格スクエアALL窓のメンバー情報
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
    # 平光さんの個人ID
    @num = 1486652
    # 平光さん個人の部屋ID
    @room_num = 39085887
    # 資格スクエアお知らせトークン
    @header = {"X-ChatWorkToken" => "0fc7920ba8eb9214d877b21854e82dc7"}

    @res = @c.post('https://api.chatwork.com/v1/rooms/#{39085887}/messages',{ "body" => "[To:#{@num}]来客です。"}, @header )
    p @res
  end

end
