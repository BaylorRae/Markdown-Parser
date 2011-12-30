require 'rubygems'
require "sinatra"
require "redcarpet"

get "/" do
  "I'm alive, I'm alive, I'm ... why are you not excited?"
end

post "/parse" do
  markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML,
    :autolink => true, :space_after_headers => true, :fenced_code_blocks => true, :no_intra_emphasis => true)
    
  markdown.render(params[:markdown])
end