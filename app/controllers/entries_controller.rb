class EntriesController < ApplicationController
  before_action :set_entry, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  # GET /entries
  # GET /entries.json


def index
  if params[:query].present?
    @entries = Entry.search(params[:query])
    else
    @entries = Entry.all
    end
  end


  # GET /entries/1
  # GET /entries/1.json
  def show
  end

  # GET /entries/new
  def new
    @entry = Entry.new

  end

  # GET /entries/1/edit
  def edit
  end

  # POST /entries
  # POST /entries.json
  def create
    @entry = Entry.new(entry_params)
     @entry.user_id = current_user.id
    #MoodAnalyzer.new(@entry).analyze
    @naivebayes = NaiveBayes.new()
    classify  = @naivebayes.classify(@entry.content)
    if classify["negative"] > classify["positive"]
      @entry.negative = true
      @entry.positive = false
      @entry.intensity = classify["negative"]
    elsif classify["negative"] < classify["positive"]
      @entry.positive = true
      @entry.negative = false
      @entry.intensity = classify["positive"]
    end

    respond_to do |format|
      if @entry.save
        format.html { redirect_to @entry, notice: 'Entry was successfully created.' }
        format.json { render :show, status: :created, location: @entry }
      else
        format.html { render :new }
        format.json { render json: @entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /entries/1
  # PATCH/PUT /entries/1.json
  def update
    #MoodAnalyzer.new(@entry).analyze
    respond_to do |format|
      if @entry.update(update_params)
        format.html { redirect_to @entry, status: 303, notice: 'Entry was successfully updated.' }
        format.json { render :show, status: :ok, location: @entry }
      else
        format.html { render :edit }
        format.json { render json: @entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /entries/1
  # DELETE /entries/1.json
  def destroy
    @entry.destroy
    ActiveRecord::Base.connection.reset_pk_sequence!('entries')

    respond_to do |format|
      format.html { redirect_to entries_url, notice: 'Entry was successfully destroyed.' }
      format.json { head :no_content }
    end

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_entry
      @entry = Entry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def entry_params
      params.require(:entry).permit(:user_id, :title, :content, :intensity, :negative, :positive)
    end
    def update_params
      params.permit(:user_id, :title, :content, :intensity, :negative, :positive, :id)
    end
end
