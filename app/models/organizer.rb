class Organizer < ApplicationRecord

  belongs_to :organizable, polymorphic: true


end
