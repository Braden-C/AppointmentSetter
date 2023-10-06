class AppointmentsdbsController < ApplicationController
  before_action :set_appointmentsdb, only: %i[ show edit update destroy ]

  # GET /appointmentsdbs or /appointmentsdbs.json
  def index
    @appointmentsdbs = Appointmentsdb.all
  end

  # GET /appointmentsdbs/1 or /appointmentsdbs/1.json
  def show
  end

  # GET /appointmentsdbs/new
  def new
    @appointmentsdb = Appointmentsdb.new
  end

  # GET /appointmentsdbs/1/edit
  def edit
  end

  # POST /appointmentsdbs or /appointmentsdbs.json
  def create
    @appointmentsdb = Appointmentsdb.new(appointmentsdb_params)

    respond_to do |format|
      if @appointmentsdb.save
        format.html { redirect_to appointmentsdb_url(@appointmentsdb), notice: "Appointmentsdb was successfully created." }
        format.json { render :show, status: :created, location: @appointmentsdb }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @appointmentsdb.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /appointmentsdbs/1 or /appointmentsdbs/1.json
  def update
    respond_to do |format|
      if @appointmentsdb.update(appointmentsdb_params)
        format.html { redirect_to appointmentsdb_url(@appointmentsdb), notice: "Appointmentsdb was successfully updated." }
        format.json { render :show, status: :ok, location: @appointmentsdb }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @appointmentsdb.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /appointmentsdbs/1 or /appointmentsdbs/1.json
  def destroy
    @appointmentsdb.destroy

    respond_to do |format|
      format.html { redirect_to appointmentsdbs_url, notice: "Appointmentsdb was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_appointmentsdb
      @appointmentsdb = Appointmentsdb.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def appointmentsdb_params
      params.require(:appointmentsdb).permit(:first_name, :last_name, :email, :phone, :date)
    end
end
