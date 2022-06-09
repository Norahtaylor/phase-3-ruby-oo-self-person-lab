# your code goes here
class Person 
    attr_accessor :bank_account, :happiness, :hygeine
    attr_reader :name

    def initialize(name)
        @name = name 
        @happiness=8
        @hygeine=8
        @bank_account=25
    end 

    def happiness=(num)
        @happiness = if num > 10 
            10
          elsif num < 0 
            0
          else
              num 
          end
    end 

    def hygeine=(num)
        @hygeine = if num > 10 
            10 
        elsif num < 0 
                0 
        else 
            num 
        end 
    end 

    def happy? 
        self.happiness > 7 
    end 

    def clean?
        self.hygiene > 7
      end
    
    def get_paid(amount) 
        self.bank_account += amount 
        "all about the benjamins"

    end 

    def take_bath 
        self.hygeine += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end 

    def work_out
        self.happiness += 2
        self.hygeine -= 3
        "♪ another one bites the dust ♫"
    end 

    def call_friend(friend) 
        self.happiness += 3
        friend.happiness += 3 
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end 

    def start_conversation(friend, topic)
        case topic 
        when "politics"
            self.happiness -= 2
            friend.happiness -= 2
            "blah blah partisan blah lobbyist"

        when "weather"
            self.happiness += 1 
            friend.happiness += 1
            "blah blah sun blah rain"

        else
            "blah blah blah blah blah"
        end 
    end 

end 