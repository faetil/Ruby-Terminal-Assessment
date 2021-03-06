require './CoffeeMenu'
require 'artii'



#This class is the title screen and main menu for the App.
#The main menu allows the user to navigate to the functions that the app has.
class CoffeeApp

attr_accessor :choice, :choiceList


    def initialize
        @choice = choice
        @choiceList = choiceList
    end



    def mainmenu


        #Title screen
        system('clear')       
        a = Artii::Base.new
        puts a.asciify('WELCOME')
        puts a.asciify('TO THE')
        puts a.asciify('COFFEE APP')
        puts "\n\n\n\n\n\n"
        puts "Press Enter to see the options\n\n"
        gets.chomp

        #Create an instance of the CoffeeMenu class, the CoffeeApp class (this class) will use this instance
        runapp = CoffeeMenu.new
        runapp.populate_menu


        #Start a loop at the main menu
        loop do


        #This is the main menu, it prompts the user what to do
        system('clear')
        puts "\n\n\nTo create a new coffee recipe press '1'\n\n
To read a recipe from the existing coffee recipe list press '2'\n\n
To update the coffee recipe list press '3'\n\n
To delete an item from the coffee recipe list press '4'\n\n
To exit the app type 'exit'\n\n"


        #The variable 'choice' is the user input at the main menu
        choice = gets.chomp
        choice.downcase!
                
            if          choice == "1"
                        runapp.createCoffee
            
                elsif   choice == "2"               
                        runapp.readTheList

                elsif   choice == "3"
                        runapp.updaterecipe

                elsif   choice == "4"
                        runapp.deleteItem

                elsif   choice == "exit"
                        system('clear')
                        puts "\n\n\nHave a nice day\n\n\n\n\n\n\n\n\n"
                        break

                else    puts "\n\nInvalid Answer\n\n"
                        
            
            end
        end
    end
end



#Runs the CoffeeApp class
app = CoffeeApp.new
appa = app.mainmenu
