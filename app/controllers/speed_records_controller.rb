class SpeedRecordsController < ApplicationController
  before_action :set_speed_record, only: %i[ show edit update destroy ]

  # GET /speed_records or /speed_records.json
  def index
    @speed_records = SpeedRecord.all
  end

  # GET /speed_records/1 or /speed_records/1.json
  def show
  end

  # GET /speed_records/new
  def new
    @speed_record = SpeedRecord.new
  end

  # GET /speed_records/1/edit
  def edit
  end

  # POST /speed_records or /speed_records.json
  def create
    @speed_record = SpeedRecord.new(speed_record_params)

    respond_to do |format|
      if @speed_record.save
        format.html { redirect_to @speed_record, notice: "Speed record was successfully created." }
        format.json { render :show, status: :created, location: @speed_record }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @speed_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /speed_records/1 or /speed_records/1.json
  def update
    respond_to do |format|
      if @speed_record.update(speed_record_params)
        format.html { redirect_to @speed_record, notice: "Speed record was successfully updated." }
        format.json { render :show, status: :ok, location: @speed_record }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @speed_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /speed_records/1 or /speed_records/1.json
  def destroy
    @speed_record.destroy!

    respond_to do |format|
      format.html { redirect_to speed_records_path, status: :see_other, notice: "Speed record was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_speed_record
      @speed_record = SpeedRecord.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def speed_record_params
      params.expect(speed_record: [ :vehicle_id, :speed, :location, :recorded_at, :direction, :weather_conditions, :notes ])
    end
end
