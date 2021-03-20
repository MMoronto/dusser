class UsersController < ApplicationController
    before_action :setuser, only: %i[show edit update destroy]
    #GET /users/new
    def new
        @user = User.new
        render 'users/new'
    end

    # #POST /users
    def create
        @user = User.new(user_params)
        
    end    

    #GET /users/1/show
    def show
        @user = User.find(params[2])
        render 'users/show'
    end

    # #GET /users/1/edit
    # def edit
    # end

    # #PATCH/PUT /users/1
    # def update
    #     @user = User.new
        
    # end    

    # #DELETE /users/1
    # def destroy
    #     @user.destroy
    #     render 'users/new'
    # end

end