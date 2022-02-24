class Person
  attr_accessor :partner, :name

  def initialize(name)
    @name = name
  end

  def get_married(person)
    if person.is_a?(Person)
      self.partner = person
      person.partner = self
    else
      begin
        raise PatnerError
      rescue PartnerError => error
        puts error.message
      end
    end
  end

  class PatnerError < StandardError
    def message
      "do something based on this error message"
    end
  end
end

beyonce = Person.new("Beyonce")
beyonce.get_married("Jay-Z")
puts beyonce.name



