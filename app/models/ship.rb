class Ship
    attr_accessor :name, :type, :booty

    @@ships = []

    # def initialize(name, type, booty)
    #     @name = name
    #     @type = type
    #     @booty = booty
    #     @@ships << self
    # end

    def initialize(args)
        @name = args[:name]
        @type = args[:type]
        @booty = args[:booty]
        @@ships << self
    end

    def self.all
        @@ships
    end

    def self.clear
       @@ships.clear 
    end

end