require_relative '../models/address_book'

class MenuController
    attr_reader :address_book
    
    def initialize
        @address_book = AddressBook.new
    end
   
    def main_menu
        puts "Main Menu - #{address_book.entries.count} entries"
        puts "1 - View all entries"
        puts "2 - Create an entry"
        puts "3 - Search for an entry"
        puts "4 - Import entries from a CSV"
        puts "5 - Exit"
        print "Enter your selection"
        
        selection = gets.to_i
        
        
        case selection
            when 1
                system "clear"
                view_all_entries
                main_menu
            when 2
                system "clear"
                create_entry
                main_menu
            when 3
                system "clear"
                search_entries
                main_menu
            when 4
                system "clear"
                read_CSV
                main_menu
            when 5
                system "clear"
                puts "Good bye"
                exit(0)
                
            else 
                system "clear"
                puts "Sorry, that is not a valid input. Please try again."
                main_menu
        end
    end
    
    def view_all_entries
        system "clear"
        puts "New AddressBloc Entry"
        
        print "Name: "
        name = gets.chomp
        print "Phone number: "
        phone = gets.chomp
        print "Email: "
        email = gets.chomp
        
        address_book.add_entry(name, phone, email)
        
        system "clear"
        puts "New entry created"
    end
    
    def create_entry
    end
    
    def search_entries
    end
    
    def read_CSV
    end

end