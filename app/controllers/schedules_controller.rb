class SchedulesController < ApplicationController
    
    def new
        @schedule = Schedule.new
    end
    def index
        @schedule = Schedule.all
    end

    def show
        @scedule = schedule.find(params[:id])
    end

    def edit 
        @schedule = Schedule.find(params[:id])
    end

    def update
        schedule = Schedule.find(params[:id])
        schedule.update!(task_params)
        redirect_to schedule_url,notice: "予定「#[@schedule.name]」変更完了！"
    end


    def create
        @schedule = Schedule.new(schedule_params)
    
        if @schedule.save
            redirect_to @schedule,notice: "予定「#[@schedule.name]」追加完了！"
        else
            render :new
        end        
        ##schedule.save!
        #redirect_to("")#リダイレクト先URL

    end

    def destroy
        schedule = Schedule.find(params[:id])
        schedule.destroy
        redirect_to schedule_url,notice: "予定「#[@schedule.name]」削除完了！"
    end

    private

    def schedule_params
        params.require(:schedule).permit(:name, :startdate, :memo)
    end
end
