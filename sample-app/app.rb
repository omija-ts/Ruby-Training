require "sinatra"
require 'sinatra/reloader'
# require "feedbag"
require "feedjira"

get '/' do
  # feed_urls = Feedbag.find("")
  @feed = Feedjira::Feed.fetch_and_parse("https://markezine.jp/rss/new/20/index.xml")
  erb :index
end
