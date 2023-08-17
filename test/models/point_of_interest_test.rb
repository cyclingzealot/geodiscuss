require "test_helper"

class PointOfInterestTest < ActiveSupport::TestCase

  def setup
    @poi = point_of_interests(:one)
  end

  test 'it has comments' do
    assert @poi.comments.size >= 1
  end
end
