class InquirerClassDatabasesController < ApplicationController
  before_action :set_inquirer_class_database, only: [:show, :edit, :update, :destroy]

  # GET /inquirer_class_databases
  # GET /inquirer_class_databases.json
  def index
    if params[:query].present?
      @inquirer_class_databases = InquirerClassDatabase.search(params[:query])
    else
      @inquirer_class_databases = InquirerClassDatabase.all
    end
  end

  # GET /inquirer_class_databases/1
  # GET /inquirer_class_databases/1.json
  def show
  end

  def negative
    @inquirer_class_databases = InquirerClassDatabase.where.not('negative' => nil)
  end
  def positive
    @inquirer_class_databases = InquirerClassDatabase.where.not('positive' => nil)
  end
  # GET /inquirer_class_databases/new
  def new
    @inquirer_class_database = InquirerClassDatabase.new
  end

  # GET /inquirer_class_databases/1/edit
  def edit
  end

  # POST /inquirer_class_databases
  # POST /inquirer_class_databases.json
  def create
    @inquirer_class_database = InquirerClassDatabase.new(inquirer_class_database_params)

    respond_to do |format|
      if @inquirer_class_database.save
        format.html { redirect_to @inquirer_class_database, notice: 'Inquirer class database was successfully created.' }
        format.json { render :show, status: :created, location: @inquirer_class_database }
      else
        format.html { render :new }
        format.json { render json: @inquirer_class_database.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /inquirer_class_databases/1
  # PATCH/PUT /inquirer_class_databases/1.json
  def update
    respond_to do |format|
      if @inquirer_class_database.update(inquirer_class_database_params)
        format.html { redirect_to @inquirer_class_database, notice: 'Inquirer class database was successfully updated.' }
        format.json { render :show, status: :ok, location: @inquirer_class_database }
      else
        format.html { render :edit }
        format.json { render json: @inquirer_class_database.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inquirer_class_databases/1
  # DELETE /inquirer_class_databases/1.json
  def destroy
    @inquirer_class_database.destroy
    respond_to do |format|
      format.html { redirect_to inquirer_class_databases_url, notice: 'Inquirer class database was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inquirer_class_database
      @inquirer_class_database = InquirerClassDatabase.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def inquirer_class_database_params
      params.require(:inquirer_class_database).permit(:positive, :negative, :support, :hostile, :strong, :power, :weak, :submit, :active, :passive, :pleasure, :pain, :feel, :arousal, :emote, :virtue, :vice, :ovrst, :undrst, :academ, :doctrin, :econ, :exch, :expressive, :legal, :milit, :politic, :religion)
    end
end
