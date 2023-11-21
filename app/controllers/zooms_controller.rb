class ZoomsController < ApplicationController
    def top
    end
    def index
        @zooms = Zoom.all
    end

    def situren
        @zooms = Zoom.all
      end
    
      def men
        @zooms = Zoom.all
      end
    
      def women
        @zooms = Zoom.all
      end
   
    def new
        @zoom = Zoom.new
      end
    
      def create
        zoom = Zoom.new(zoom_params)
        if zoom.save!
          redirect_to :action => "index"
        else
          redirect_to :action => "new"
        end
      end

      def show
        @zoom = Zoom.find(params[:id])
      end
    
      def edit
        @zoom = Zoom.find(params[:id])
      end

      def update
        zoom = Zoom.find(params[:id])
        if zoom.update(zoom_params)
          redirect_to :action => "show", :id => zoom.id
        else
          redirect_to :action => "new"
        end
      end
      
      def destroy
        zoom = Zoom.find(params[:id])
        zoom.destroy
        redirect_to action: :index
      end
     
      private
      def zoom_params
        params.require(:zoom).permit(:about, :title, :youtube_url,:category)
      end
     
    
    
end
