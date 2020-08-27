$:.unshift File.expand_path("../lib", __FILE__)
require 'bundler'
Bundler.require
require 'router'

class App
  def perform
    Router.new.perform
  end
end

App.new.perform
