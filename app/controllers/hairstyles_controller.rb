class HairstylesController < ApplicationController
    before_action :sethairstyle, only: %i[index show edit update destroy]
    #GET /hairstyles/new
    def new
        @hairstyle = Hairstyle.new
        render 'hairstyles/new'
    end

    # #POST /hairstyles
    def create
        @hairstyle = Hairstyle.new(hairstyle_params)
        
    end    

    #GET /hairstyles/1/show
    def show
        @hairstyle = Hairstyle.find(params[:id])
        render 'hairstyles/show'
    end

    # #GET /hairstyles/1/edit
    # def edit
    # end

    # #PATCH/PUT /hairstyles/1
    # def update
    #     @hairstyle = Hairstyle.new
        
    # end    

    # #DELETE /hairstyles/1
    # def destroy
    #     @hairstyle.destroy
    #     render 'hairstyles/new'
    # end

end