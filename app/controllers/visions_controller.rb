class VisionsController < ApplicationController
	before_action: only: [:show, :edit, :update, :delete]
	def index
	end

	def create
		@vision = Vision.new(vision_params)

		if @vision.save
			redirect_to @vision, notice: "You successfully created your vision board"
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
		
	end

	def destroy
		
	end

	private

	def vision_params
		params.require(:vision).permit(:title, :goal)
	end

	def find_vision
		@vision = Vision.find(params[:id])
	end
end
