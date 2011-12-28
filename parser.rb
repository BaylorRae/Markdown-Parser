require 'rubygems'
require "sinatra"
require "redcarpet"

get "/" do
  markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML,
    :autolink => true, :space_after_headers => true)
    
  markdown.render("## This is an H2 Tag!\nAwesome huh?")
end
