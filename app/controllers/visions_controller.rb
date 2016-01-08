class VisionsController < ApplicationController
	before_action :find_vision, only: [:show, :edit, :update, :delete]

	def index
		@vision = Vision.all
	end

	def create
		@vision = Vision.new(vision_params)

		if @vision.save
			redirect_to @vision, notice: "You successfully created your vision board!"
		else
			render "new"
		end
	end

	def new
		@vision = Vision.new
	end

	def show
		
	end

	def edit
	end

	def update
		if @vision.update(vision_params)
			redirect_to @vision, notice: "Vision board has been updated."
		else
			render "edit"
		end
	end

	def destroy
		@vision.destroy
		redirect_to visions_path
	end

	private

	def vision_params
		params.require(:vision).permit(:title, :goal)
	end

	def find_vision
		@vision = Vision.find(params[:id])
	end
end