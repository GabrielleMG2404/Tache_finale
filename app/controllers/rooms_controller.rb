class RoomsController < InheritedResources::Base

  private

    def room_params
      params.require(:room).permit(:nuemero_chambre, :etage, :type)
    end

end
