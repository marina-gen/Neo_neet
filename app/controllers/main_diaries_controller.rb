class MainDiariesController < ApplicationController
    def index
        @diaries = MainDiary.all.order(today: :desc)
    end

    def new
        @diary = MainDiary.new
        @day = Date.today
    end

    def create
        @diary = MainDiary.new(diary_params)
        @day = Date.today
        if @diary.save
            redirect_to main_diaries_url, notice:"日記を保存しました。"
        else
            render :new
        end
    end

    def show
        @diary = MainDiary.find(params[:id])
    end

    def destroy
        diary = MainDiary.find(params[:id])
        diary.delete
        redirect_to main_diaries_url, notice:"#{diary.today}の日記を削除しました。"
    end
    

    private

    def diary_params
        params.require(:main_diary).permit(:today, :diary)
    end
end
