class User < ApplicationRecord
    # validates_uniqueness_of :PIN, on: :create, message: "PIN already exists", only: [:create, :update, :new]
    has_many :attendances
    has_many :lessons, through: :attendances
    # before_destroy :destroy_sign_ins

    enum role: [:admin, :instructor, :student, :trial]


    def self.find_by_pin(pin)
      User.where(pin: pin).take
    end

    private 

    def destroy_sign_ins
      self.sign_in_times.destroy_all
    end
end
