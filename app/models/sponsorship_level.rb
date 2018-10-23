class SponsorshipLevel < ApplicationRecord

  belongs_to :sponsorable, polymorphic: true

end
