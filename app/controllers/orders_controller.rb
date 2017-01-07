require "net/http"
require "uri"
require "json"

class OrdersController < ApplicationController
  def index
    @orders = Order.all
    @totalprice = Order.sum(:total_price)
    @totaltax = Order.sum(:total_tax)
  end
  def show
    @order = Order.find(params[:id])
  end
  def new
  end
  def create
	#Condition to check if the order is to be added
	if (params[:add_order] == "1")
	 @order = Order.new(order_params)
  	 @order.save
	end
	#Condition to check if orders are to be uploaded from Shopify URL
	if (params[:shopify_upload] == "1")
		1.upto(3) do |number|	
			uri = URI.parse("https://shopicruit.myshopify.com/admin/orders.json?page=#{number}&access_token=c32313df0d0ef512ca64d5b336a0d7c6")
			response = Net::HTTP.get_response(uri)
			data = JSON.parse(response.body)
			data['orders'].each { |item|
				order = Order.new(:orderid => item['id'],:total_price => item['total_price'],:total_tax => item['total_tax'],:item_name =>'N/A')
				order.save
			}
		end
	end
	#Condition to check if database is to be truncated
	if (params[:delete_entries] == "1")
		Order.delete_all
	end	
    	@orders = Order.all
    	@totalprice = Order.sum(:total_price)
    	@totaltax = Order.sum(:total_tax)
	render action: "index"
  end

  def destroy
    @order = Order.find(params[:id])
    @order.destroy
    redirect_to orders_path
  end

  private
  def order_params
    params.require(:order).permit(:orderid, :total_price,:total_tax,:item_name)
  end
end
