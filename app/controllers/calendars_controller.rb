class CalendarsController < ApplicationController
    def index
        # @today = Date.today
        @d = DateTime.current.beginning_of_day  # 今日の0:00
        # @d = @d.to_s
        # nd = d + 1  # 明日
=begin        
        @schedules = Schedule.all
=end
        # 今日の予定を取得
        # @slists = Schedule.where("startdate < ? AND enddate >= ?", params[:nd], params[:d]).order(startdate: :asc)
        # @todayschedules = Schedule.where(user_id: current_user, startdate: @d)
        @todayschedules = Schedule.where(user_id: current_user, startdate: @d) #DBから今日のスケジュールを取得
        if @todayschedules == nil
            @todayschedules = "今日のクエストはありません"
        end

      end
end
