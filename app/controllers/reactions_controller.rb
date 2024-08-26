class ReactionsController < ApplicationController
    def new_user_reaction
      @user = current_user
      @type = params[:reaction_type]
      @publication = publication.find(params[:publication_id]) if params[:publication_id]
      @comment = Comment.find(params[:comment_id]) if params[:comment_id]
      @kind = params[:kind]
  
      respond_to do |format|
        # Buscamos si ya existe una reacción
        reaction = if @type == "comment"
                     Reaction.find_by(user_id: @user.id, comment_id: @comment&.id)
                   else
                     Reaction.find_by(user_id: @user.id, publication_id: @publication&.id)
                   end
  
        if reaction
          format.html { redirect_to publication_path(@publication), notice: 'You already reacted to this publication' }
        else
          # Creamos una nueva reacción
          @reaction = if @type == "publication"
                        Reaction.new(user_id: @user.id, publication_id: @publication&.id, reaction_type: @type, kind: @kind)
                      else
                        Reaction.new(user_id: @user.id, comment_id: @comment&.id, reaction_type: @type, kind: @kind)
                      end
  
          if @reaction.save
            format.html { redirect_to publication_path(@publication), notice: 'Reaction was successfully created.' }
          else
            format.html { redirect_to publication_path(@publication), notice: 'Something went wrong' }
          end
        end
      end
    end
  end
  