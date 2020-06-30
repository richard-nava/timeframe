class PagesController < ApplicationController
    def home
    end

    def sign_in 
       @user = User.new
    end

    # POST /signin
    
end