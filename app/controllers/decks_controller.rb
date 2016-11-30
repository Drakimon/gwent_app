class DecksController < ApplicationController
  before_action :set_deck, only: [:show, :edit, :update, :destroy]
  before_action :logged_in_user, only: [:index, :show, :new, :edit, :create, :update, :destroy]
  before_action :correct_user, only: [:show, :edit, :update, :destroy]

  # GET /decks
  # GET /decks.json
  def index
    @decks = current_user.decks
  end

  # GET /decks/1
  # GET /decks/1.json
  def show
    @cards = Card.all
  end

  # GET /decks/new
  def new
    @deck = Deck.new
  end

  # GET /decks/1/edit
  def edit
    @deck = Deck.find(params[:id])
  end

  # POST /decks
  # POST /decks.json
  def create
    @deck = Deck.new(deck_params)
    @deck.user = current_user
    if @deck.save
      flash[:success] = "Deck successfully created"
      redirect_to @deck
    else
      render 'new'
    end
  end

  # PATCH/PUT /decks/1
  # PATCH/PUT /decks/1.json
  def update
    @deck = Deck.find(params[:id])
    if @deck.update_attributes(deck_params)
      flash[:success] = "Changes saved"
      redirect_to @deck
    else
      render 'edit'
    end
  end

  # DELETE /decks/1
  # DELETE /decks/1.json
  def destroy
    @deck.destroy
    respond_to do |format|
      format.html { redirect_to decks_url, notice: 'Deck was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_deck
      @deck = Deck.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def deck_params
      params.require(:deck).permit(:deckName, :faction, :user_id)
    end
    
    def correct_user
      @user = @deck.user
      redirect_to(root_url) unless current_user?(@user)
    end
end
