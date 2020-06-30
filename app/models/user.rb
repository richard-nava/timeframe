class User < ApplicationRecord
    # validates_uniqueness_of :PIN, on: :create, message: "PIN already exists", only: [:create, :update, :new]

    enum role: [:admin, :instructor, :student, :trial]


    def self.find_by_pin(pin)
      User.where(pin: pin).take
    end
end
