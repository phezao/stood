class University < ApplicationRecord
    has_many :professors

    NAMES = ["Universidade de São Paulo", "Insper", "Faculdade Getúlio Vargas"]
end
