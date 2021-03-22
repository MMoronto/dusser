class HairstylesController < ApplicationController
    before_action :set_hairstyle, only: [:show, :edit, :update, :destroy]
    
    #GET /hairstyles
    def index
        @hairstyles = Hairstyle.all
    end

    #GET /hairstyles/1
    def show
    end

    #GET /hairstyles/new
    def new
        @hairstyle = Hairstyle.new
    end 

    #GET /hairstyles/1/edit
    def edit
    end

    # #POST /hairstyles
    def create
        @hairstyle = Hairstyle.new(hairstyle_params)
        
        respond_to do |format|
            if @hairstyle.save
                format.html { redirect_to @hairstyle, notice: 'Hairstyle was successfully created.' }
                formast.json { render :show, status: :created, location: @hairstyle }
            else
                format.html { render :new }
                format.json { render json: @hairstyle.errors, status: :unprocessable_entity }
            end
        end
    end   

    #PATCH/PUT /hairstyles/1
    def update
        respond_to do |format|
            if @hairstyle.update(hairstyle_params)
                format.htmll { redirect_to @hairstyle, notice: 'Hairstyle was successfully updated.' }
                formast.json { render :show, status: :ok, location: @hairstyle }
            else
                format.html { render :edit }
                format.json { render json: @hairstyle.errors, status: :unprocessable_entity } 
            end
        end   
    end    

    #DELETE /hairstyles/1
    def destroy
        @hairstyle.destroy
        respond_to do |format|
            format.html { redirect_to hairstyles_url, notice: 'HAirstyle was successfully destroyed.' }
            format.json { head :no_content }
        end
    end

    private
        # Use callbacks to share common setup or constraints between actions.
        def set_hairstyle
            @hairstyle = Hairstyle.find(params[:id])
        end

        #Never trust parameters from the internet, only allow  the white list throughj.
        def hairstyle_params
            params.require(:hairstyle).permit(:style, :image_url)
        end

end