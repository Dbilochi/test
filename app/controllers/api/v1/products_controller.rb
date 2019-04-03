class Api::V1::ProductsController < Api::V1::BaseController
  def create_product
      begin
        @product = Product.create(name:params[:name],price:params[:name],description:params[:description])
        if @product.save
          render json: @product
        else
          render json:{
            data:{
              messages: @product.errors.full_messages
            },
            rstatus:0,
            status: 404
          }
        end
      rescue Exception => e
        render json:{
          data:{
            messages: e.message
          },
          rstatus:0,
          status: 404
        }
      end
    end
end
