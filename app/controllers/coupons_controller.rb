class CouponsController < ApplicationController

	def index
		@coupons = Coupon.all
	end

	def new
		@coupon = Coupon.new
	end

	def show
		@coupon = Coupon.find(params[:id])
	end

	def create
		@coupon = Coupon.new(coupon_code: params[:coupon_code], store: params[:store])
		@coupon.save

		redirect_to coupon_path(@coupon)
	end

	def edit
		# @coupon = Coupon.find(params[:id])
	end

	def update
		# @coupon = Coupon.find(params[:id])
		# @coupon.update(coupon_params(:coupon_code, :store))

		# redirect_to coupon_path(@coupon)
	end

	def destroy

	end
	# private

	# def coupon_params(*args)
	# 	params.require(:coupon).permit(*args)
	# end
end
