class CalendarsController < ApplicationController
    def index
=begin
        d = DateTime.current.beginning_of_day  # 今日の0:00
        nd = d + 1  # 明日
        
        @schedules = Schedule.all
        # 今日の予定を取得
        @slists = Schedule.where("startdate < ? AND enddate >= ?", params[:nd], params[:d]).order(startdate: :asc)
=end
      end
end
