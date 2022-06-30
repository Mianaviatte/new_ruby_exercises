# extend is used to mixin with class, not an instance!
module ThePresent
    def now
        puts "Hi there, it's #{Time.new.hour > 12? Time.new.hour - 12 : Time.new.hour} : #{Time.new.min} #{Time.new.hour > 12? "PM" : "AM"} GMT now at your place in spase and time continuum."
    end
end

class TheHereAnd
    extend ThePresent
end

TheHereAnd.now


# include is used to mixin with instance, not a class!
module MaritalArts
    def swardsman(name)
        puts "I'm crafting me sward for #{name}"
    end
end

class Ninja
    include MaritalArts

    def initialize(clan)
        @clan = clan
    end

end

class Samurai
    include MaritalArts

    def initialize(shogun)
        @shogun = shogun
    end
end

ninja = Ninja.new("Shirai Ryu")
samurai = Samurai.new("Lin Kuei")

ninja.swardsman(:clan)
samurai.swardsman(:shogun)