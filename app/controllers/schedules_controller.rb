class SchedulesController < ApplicationController
    
    def new
        # @schedules = current_user.schedules.find(params[:id])
        @schedule = Schedule.new
 
    end
    def index
        # @schedules = current_user.schedules
        @schedules = Schedule.where(user_id: current_user)
    end

    def show
        @scedule = current_user.schedule.find(params[:id])
    end

    def edit 
        @schedule = current_user.schedule.find(params[:id])
    end

    def update
        schedule = current_user.schedule.find(params[:id])
        schedule.update!(schedule_params)
        redirect_to schedule_url,notice: "予定「#[@schedule.name]」変更完了！"
    end


    def create
        @schedule = current_user.schedules.new(schedule_params)
        
        if @schedule.save
            redirect_to schedules_url, notice: "予定「#{@schedule.name} 」追加完了！"
        else
            render :new
        end        
        ##schedule.save!
        #redirect_to("")#リダイレクト先URL
     
    end

    def destroy
        schedule = current_user.schedule.find(params[:id])
        schedule.destroy
        redirect_to schedule_url,notice: "予定「#[@schedule.name]」削除完了！"
    end

    private

    def schedule_params
        params.require(:schedule).permit(:name, :startdate, :enddate, :memo)
    end
end
