class EngappsController < ApplicationController
    before_action :set_target_engapp, only: %i[show edit update destroy]

    def index
        @engapps = EngApp.page(params[:page])
    end

    def new
        @engapp = EngApp.new
    end 

    def create
        @engapp = EngApp.create(engapp_params)
        if @engapp.save
            flash[:success] = "「#{@engapp.title}」の掲示板を作成しました。"
            redirect_to controller: :engapps, action: :show, id: @engapp
        end
    end

    def show
    end

    def edit
    end

    def update
        @engapp.update(engapp_params)
        if @engapp.save
            flash[:success] = "「#{@engapp.title}」の掲示板を更新しました。"
            redirect_to controller: :engapps, action: :show, id: @engapp
        end
    end
 
    def destroy
        @engapp.destroy
        if @engapp.destroy
            redirect_to engapps_path, flash: {notice: "「#{@engapp.title}」の掲示板が削除されました。"}
        end
    end

    private

    def engapp_params
        params.require(:eng_app).permit(:author, :title, :tag, :body)
    end

    def set_target_engapp
        @engapp = EngApp.find(params[:id])
    end
end 