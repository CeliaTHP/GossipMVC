$:.unshift File.expand_path("../lib", __FILE__)
require 'controller'

class Router
  attr_accessor :controller, :params

  def initialize  
    @controller = Controller.new
  end

  def perform

    puts "WELCOME TO THE GOSSIP PROJECT"

    while true

      puts "Que veux-tu faire ? "
      puts "1 - Créer un gossip "
      puts "2 - Afficher les gossips"
     puts "3 - Supprimer un gossip" 
puts "4 - Quitter l'app"
      choix = gets.chomp.to_i

      case choix
      when 1 
        puts "C'est parti pour la création d'un gossip"
        @controller.create_gossip

      when 2
        puts "Affichage des gossips..."
        @controller.index_gossips
when 3
puts "Quel gossip tu veux supprimer ? "
@controller.destroy

      when 4
        puts "Très bien, à bientôt ! "
        break

      else
        puts "Je n'ai pas compris ton choix, réessaye !"

      end
    end
  end
end

