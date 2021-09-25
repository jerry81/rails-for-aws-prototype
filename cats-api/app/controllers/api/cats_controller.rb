class Api::CatsController < ApplicationController
    def show
        @cats = Cat.all
        render json: @cats 
    end

    def create 
        @cat = Cat.new(cat_params)

        if @cat.save
            render json: @cat 
        else
            render error: {error: 'Failed to add cat record', status:400 }
        end
    end

    def produce
        puts "request body is #{request.body.read}"
        puts "params are #{params}"
        
        DeliveryBoy.deliver_async({"source" => params[:source]}, topic: "cats")
        render json: {status:200, msg: 'great success'}
    end

    private
    
    def cat_params
        params.require(:cat).permit(:name, :breed)
    end
end
