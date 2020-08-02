class Voiture < ApplicationRecord
    has_one_attached :image
    belongs_to :marque, required: false
    belongs_to :personne, required: false
    def age
        date = self.date_mise_en_service
        age = Date.today.year - date.year
        age -= 1 if Date.today < date + age.years
        return age
    end 
end