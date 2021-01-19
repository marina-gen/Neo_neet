class DayController < ApplicationController
    def index
        @date = params[:param1]
        @wday = params[:param2]
    end

end
