require 'controller'

class View

  def create_gossip
    puts "Quel est l'auteur de ton gossip ?"
    @author = gets.chomp
    puts "Quel est le gossip en question ? "
    @content = gets.chomp
    return params = { author: @author, content: @content}
  end

def index_gossips(gossips)
gossips.each do |row|
puts "#{row.author} a dit que : #{row.content}"
end

def destroy

find_gossip = Gossip.all.each_with_index {|gossip, i|
puts "#{i} : #{gossip.author}, #{gossip.content}" }
puts "Quel gossip veux-tu supprimer ?"
num = gets.chomp.to_i
return num
end
end

end

