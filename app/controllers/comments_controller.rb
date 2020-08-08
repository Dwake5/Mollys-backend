class CommentsController < ApplicationController

    def create
        comment = Comment.new(review: params[:review], name: params[:name], area: params[:area], service: params[:service], display: false)
        if comment.save
            render json: comment
        else
            render json: {error: 'Comment did not save?' }, status: 400
        end
    end

    def reviewsList
        render :json => Comment.all, except: [:created_at, :updated_at]
    end

    def destroy
        @Comment = Comment.find(params[:id])
        @Comment.destroy
    end

    def update
        comment = Comment.find(params[:id])
        comment.update(review_details)
    end

    private
        def review_details
            params.permit(:review, :name, :area, :service, :display)
        end
end
