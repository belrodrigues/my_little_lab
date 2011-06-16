require 'spec_helper'

describe LandingPageController do
  describe("GET /") do
    it("should instantiate a people") do
      get :index
      assigns[:person]
    end
  end
end
