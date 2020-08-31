# your code goes here
require 'pry'
class Person

    attr_reader :name

    attr_accessor :bank_account, :happiness, :hygiene

    def initialize(name)
        @name = name
        @bank_account = bank_account = 25
        @happiness = happiness = 8
        @hygiene = hygiene = 8
    end

    def happiness=(num)
        @happiness = num   
        @happiness = 10 if @happiness > 10   
        @happiness = 0 if @happiness < 0
    end

    def hygiene=(num)
        @hygiene = num
        @hygiene = 10 if @hygiene > 10
        @hygiene = 0 if @hygiene < 0
    end


    def clean?
        @hygiene > 7
    end

    def happy?
        @happiness > 7
    end
    
    def get_paid(salary)
        @bank_account = @bank_account + salary
        "all about the benjamins"
    end

    def take_bath
        self.hygiene = @hygiene + 4
        hygiene
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -= 3
        hygiene
        self.happiness += 2
        happiness
        '♪ another one bites the dust ♫'
    end

    def call_friend(friend)
        self.happiness += 3
        happiness
        friend.happiness += 3
        friend.happiness
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        if topic == 'politics'
            self.happiness -= 2
            happiness
            person.happiness -= 2
            person.happiness
            return 'blah blah partisan blah lobbyist'
        end
        if topic == "weather"
            self.happiness += 1
            happiness
            person.happiness += 1
            person.happiness
            return 'blah blah sun blah rain'
        end
        if topic != "weather" and topic != "politics"
            return 'blah blah blah blah blah'
        end
    end

end




# Person
#     #start_conversation
#       accepts two arguments, a person to strike a convo with and a topic (FAILED - 36)
#       topic: politics
#         returns 'blah blah partisan blah lobbyist' if the topic is politics (FAILED - 37)
#         if topic is politics, it makes both people in the convo two points less happy (FAILED - 38)
#         never makes either party less than 0 points happy (never negative)
#           (hint: use your #happiness= method) (FAILED - 39)
#         calls on the #happiness= method (FAILED - 40)
#       topic: weather
#         returns 'blah blah sun blah rain' if the topic is weather (FAILED - 41)
#         if topic is weather, it makes both people in the convo one point more happy (FAILED - 42)
#         never makes either party more than 10 points happy
#           (hint: use your #happiness= method) (FAILED - 43)
#         calls on the #happiness= method (FAILED - 44)
#       topic: other
#         returns 'blah blah blah blah blah' if the topic is not politics or weather (FAILED - 45)
#         if topic is not politics or weather, it doesn't affect happiness (FAILED - 46)