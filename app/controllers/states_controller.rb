class StatesController < ApplicationController 
     before_action :authenticate_user!

    def new 
@state=State.new
    end
    def create
        @state=State.new(state_params)
        @state.save
        redirect_to states_path

    end
    private
    def state_params
        params.require(:state).permit(:name)
      end
end
