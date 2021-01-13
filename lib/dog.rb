require 'pry'
class Dog
    attr_accessor :name
    @@all = []
    def initialize(name)
        @name = name
        
        save
       

    end
    def save
        @@all << self
    end
    def self.all
        @@all.each do |dog|
            dog
        end
    end
    def self.clear_all
        @@all = []
    end
    def self.print_all
        @@all.each do |item|
            puts item.name
        end
    end
    


end