require 'pry'
class Person 

    attr_accessor :bank_account
    attr_reader :hygiene
    attr_reader :happiness
    attr_reader :name

    def happiness= num
        if num <= 10 && num >= 0
            @happiness = num
        elsif num > 10
            @happiness = 10
        elsif num < 0
            @happiness = 0
        end
    end

    def hygiene= num
        if num <= 10 && num >= 0
            @hygiene = num
        elsif num > 10
            @hygiene = 10
        elsif num < 0
            @hygiene = 0
        end
    end

    def happy? 
        if self.happiness > 7
            return true
        end
        false
    end

    def initialize name

    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8 
    end
    
    def clean?
        if self.hygiene > 7
            return true
        end
        false
    end

    def get_paid amount
        @bank_account += amount
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness += 2
        self.hygiene -= 3
        
        "♪ another one bites the dust ♫"
    end

    def call_friend friend
        self.happiness += 3
        friend.happiness += 3

        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation friend, topic
        if topic == "politics"
            self.happiness -= 2
            friend.happiness -= 2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            friend.happiness += 1
            "blah blah sun blah rain"
        else 
            "blah blah blah blah blah"
        end
    end

end