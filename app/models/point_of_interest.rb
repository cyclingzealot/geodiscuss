class PointOfInterest < ApplicationRecord

  acts_as_commontable dependent: :destroy
end
