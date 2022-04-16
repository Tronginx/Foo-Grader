class PeerCommentsController < ApplicationController
  before_action :set_peer_comment, only: %i[ show edit update destroy ]

  # GET /peer_comments or /peer_comments.json
  def index
    @peer_comments = PeerComment.all
  end

  # GET /peer_comments/1 or /peer_comments/1.json
  def show
  end

  # GET /peer_comments/new
  def new
    @peer_comment = PeerComment.new
  end

  # GET /peer_comments/1/edit
  def edit
  end

  # POST /peer_comments or /peer_comments.json
  def create
    @peer_comment = PeerComment.new(peer_comment_params)

    respond_to do |format|
      if @peer_comment.save
        format.html { redirect_to @peer_comment, notice: "Peer comment was successfully created." }
        format.json { render :show, status: :created, location: @peer_comment }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @peer_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /peer_comments/1 or /peer_comments/1.json
  def update
    respond_to do |format|
      if @peer_comment.update(peer_comment_params)
        format.html { redirect_to @peer_comment, notice: "Peer comment was successfully updated." }
        format.json { render :show, status: :ok, location: @peer_comment }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @peer_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /peer_comments/1 or /peer_comments/1.json
  def destroy
    @peer_comment.destroy
    respond_to do |format|
      format.html { redirect_to peer_comments_url, notice: "Peer comment was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_peer_comment
      @peer_comment = PeerComment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def peer_comment_params
      params.require(:peer_comment).permit(:title, :comment, :commenter)
    end
end
