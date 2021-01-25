class MainDiariesController < ApplicationController
    def index
        @diaries = MainDiary.where(user_id: current_user).order(today: :desc)
    end

    def new
        @diary = MainDiary.new
        @day = Date.today
    end

    def create
        @diary = current_user.main_diaries.new(diary_params)
        @day = Date.today
        if @diary.save
            redirect_to main_diaries_url, notice:"日記を保存しました。"
        else
            render :new
        end
    end

    def show
        @diary = current_user.main_diaries.find(params[:id])
    end

    def destroy
        diary = current_user.main_diaries.find(params[:id])
        diary.delete
        redirect_to main_diaries_url, notice:"#{diary.today}の日記を削除しました。"
    end
    

    private

    def diary_params
        params.require(:main_diary).permit(:today, :diary, :user_id)
    end
end
