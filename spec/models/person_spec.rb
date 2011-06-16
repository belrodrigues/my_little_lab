require 'spec_helper'

describe Person do
  fixtures :people
  describe("email") do
    it("should exist") do
      person = Person.create
      person.errors[:email].should include "can't be blank"
    end
    it("should add error if is invalid") do
      person = Person.create({ email: "not@valid"})
      person.errors[:email].should include "is invalid"
    end

  end
end
