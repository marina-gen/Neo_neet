class DayController < ApplicationController
    def index
        @date = params[:param1]
        @wday = params[:param2]
        @sday = Date.today
    end

end
