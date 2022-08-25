class HomeController < ApplicationController
    def index
    end

    def hi
        @show_message = true
        @message = "서누"
    end
end
