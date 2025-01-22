class Father < ApplicationRecord
    has_many :children
    belongs_to :occupation
    has_one_attached :avatar

    validates :name, presence: true
    validates :email, presence: true, uniqueness: true

    def occupation_description
        if self.occupation.blank?
            " - "
        else
            self.occupation.description
        end
    end

    has_one_attached :avatar do |attachable|
    attachable.variant :thumb, resize_to_limit: [300, 300]
    end
end
