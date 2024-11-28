class CountController < ApplicationController

    def index
        @counter = Counter.first
        if @counter.nil?
            @counter = Counter.create(value: 0)
        end
    end

    def increment
        @counter = Counter.first
        @counter.update(value: @counter.value + 1)
        redirect_to("/")
    end

    def decrement
        @counter = Counter.first
        @counter.update(value: @counter.value - 1)
        redirect_to("/")
    end

    def reset
        @counter = Counter.first
        @counter.update(value: 0)
        redirect_to("/")
    end
end
