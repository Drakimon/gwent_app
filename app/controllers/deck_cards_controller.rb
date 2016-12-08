class DeckCardsController < ApplicationController
  before_action :set_deck_card, only: [:show, :update, :destroy]
  before_action :admin_user, only: [:new, :edit, :update]

  # GET /deck_cards/new
  def new
    @deck_card = DeckCard.new
  end

  # GET /deck_cards/1/edit
  def edit
  end

  # POST /deck_cards
  # POST /deck_cards.json
  def create
    @card = Card.find(params[:card_id])
    params[:deck_card][:card_id] = @card.id
    @deck_card = DeckCard.new(deck_card_params)
    if @deck_card.save
      flash[:success] = "Card successfully added to deck!"
      redirect_to @deck_card.deck
    else
      flash[:danger] = "Card and deck are not compatible"
      redirect_to @card
    end
  end

  # PATCH/PUT /deck_cards/1
  # PATCH/PUT /deck_cards/1.json
  def update
    respond_to do |format|
      if @deck_card.update(deck_card_params)
        flash[:success] = "Deck card was successfully updated."
        redirect_to @deck_card.deck
        format.json { render :show, status: :ok, location: @deck_card }
      else
        format.html { render :edit }
        format.json { render json: @deck_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /deck_cards/1
  # DELETE /deck_cards/1.json
  def destroy
    d = @deck_card.deck
    @deck_card.destroy
    flash[:success] = "Card was successfully removed from the deck"
    redirect_to d
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_deck_card
      @deck_card = DeckCard.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def deck_card_params
      params.require(:deck_card).permit(:deck_id, :card_id)
    end
end
