class GoofballsController < ApplicationController

  #->Prelang (scaffolding:rails/scope_to_user)
  before_filter :require_user_signed_in, only: [:new, :edit, :create, :update, :destroy]

  before_action :set_goofball, only: [:show, :edit, :update, :destroy]

  # GET /goofballs
  # GET /goofballs.json
  def index
    @goofballs = Goofball.all
  end

  # GET /goofballs/1
  # GET /goofballs/1.json
  def show
  end

  # GET /goofballs/new
  def new
    @goofball = Goofball.new
  end

  # GET /goofballs/1/edit
  def edit
  end

  # POST /goofballs
  # POST /goofballs.json
  def create
    @goofball = Goofball.new(goofball_params)

    respond_to do |format|
      if @goofball.save
        format.html { redirect_to @goofball, notice: 'Goofball was successfully created.' }
        format.json { render action: 'show', status: :created, location: @goofball }
      else
        format.html { render action: 'new' }
        format.json { render json: @goofball.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /goofballs/1
  # PATCH/PUT /goofballs/1.json
  def update
    respond_to do |format|
      if @goofball.update(goofball_params)
        format.html { redirect_to @goofball, notice: 'Goofball was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @goofball.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /goofballs/1
  # DELETE /goofballs/1.json
  def destroy
    @goofball.destroy
    respond_to do |format|
      format.html { redirect_to goofballs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_goofball
      @goofball = Goofball.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def goofball_params
      params.require(:goofball).permit(:user_id)
    end
end
