$:.unshift File.expand_path("../lib",__FILE__)
require 'csv'
require 'view'

class Gossip
attr_accessor :author, :content

	       def initialize(author, content)
  @author = author
  @content = content
  end

  def save
  CSV.open('db/gossip.csv', 'a+') do |csv|
  csv << [@author, @content]
  end
  end

  def self.all
  all_gossips = []
  CSV.foreach("db/gossip.csv") do |row|
all_gossips << Gossip.new(row[0], row[1])
  end
  return all_gossips
  end

def self.destroy(num)
  csv_arr = CSV.read('db/gossip.csv', {col_sep: ","})
new_arr = csv_arr.delete_at(num)
  puts "Gossip n #{num} supprimé"
  CSV.open('db/gossip.csv', "w") do |csv|
  csv_arr.each do |gossip|
  csv << gossip
  end
  end
  end

  end





