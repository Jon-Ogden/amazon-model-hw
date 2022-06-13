class Api::AuthorsController < ApplicationController
    before_action :set_author, only: [:show, :update, :destroy]

    def index
        render json: Author.all
    end
    def show
        render json: @author
    end
    def create
        @author = Author.new(author_params)
        if(@author.save)
            render json: @author
        else
            render json: @author.erros.full_messages, status:422
        end
    end
    def update
        if(@author.update(author_params))
            render json: @author
        else
            render json: @author.errors.full_messages, status: 422
        end
    end
    def destroy
        render json: @author.destroy

    private

    def set_author
        @author = Author.find(params[:id])
    end
    def author_params
        params.require(:author).permit(:name, :age)
    end

    end


end
