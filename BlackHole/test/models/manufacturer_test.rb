require 'test_helper'

class ManufacturerTest < ActiveSupport::TestCase
      fixtures :manufacturers
   def test_name
      manufacturer= Manufacturer.new(:company_name => 'Arnette')
      assert_equal 'Arnette', manufacturer.name
  # test "the truth" do
  #   assert true
   end
end
