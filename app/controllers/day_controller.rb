class DayController < ApplicationController
    def index
        @date = params[:param1] #　クリックされた日付の年月日データが格納されている
        @wday = params[:param2] #  曜日の数値データ
        @sday = Date.today      #　インターネットから取得する今日の日付情報
        
        @tschedules = Schedule.where(user_id: current_user, startdate: @date)
        if @tschedules.first == nil
            @noschedule = "今日のクエストはありません"
        end

        @tmain_diaries = MainDiary.where(user_id: current_user, today: @date)
        if @tschedules.first == nil
            @nosavedata = "冒険の書はまだかきこまれていません"
        end

    end

end
