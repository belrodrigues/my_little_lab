require 'spec_helper'

describe PeopleController do
  describe("POST /") do
    it("should create a person") do
      post :create, :email => "test_okay@test.com"

      response.status.should == 200
    end
  end
end
