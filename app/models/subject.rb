class Subject < ApplicationRecord
    has_many :professors
    belongs_to :appointment

    NAMES = ["Matemática", "Português", "Química", "Física", "Geografia", "Redação", "Biologia", "História"]
end
