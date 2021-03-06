class SubscribersController < ApplicationController

    before_action :admin_authorize, :except => [:create]

    def index 

        @subscribers = Subscriber.all

    end

    def create 
        
        @subscriber = Subscriber.new(subscriber_params)
        if Subscriber.exists?(email: @subscriber.email)
            redirect_to root_path, alert:
            "Sorry, that email already exists!"
        elsif
            @subscriber.save
            redirect_to root_path, notice:
            "Thank you for subscribing, #{@subscriber.f_name}, for subscribing to my Grimblog!"
        else

            redirect_to root_path, alert:
            "Sorry, I failed to save your information. Please try again!"

        end

    end

    def destroy

        @subscriber = Subscriber.find(params[:id])
        @subscriber.destroy

        redirect_to subscribers_path

    end

    private

    def subscriber_params
        params.require(:subscriber).permit(:f_name, :l_name, :email, :country)
    end

end