class EquipmentController < ApplicationController
  before_action :set_equipment, only: [:show, :edit, :update, :destroy]

  def index
   @euipments = Equipment.all
  end

  def edit
  end

  def show 
 @equipment = Equipment.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @equipment }
    end
  end

  def new
  @equipment = Equipment.new
  end


  def create
    p params, "boobalan";
    puts equipment_params
  @equipment = Equipment.new(equipment_params)
  if @equipment.save
render json: @equipment
      # respond_to do |format|
      #   if @equipment.save
      #     format.html{ redirect_to @equipment, notice:'Equipment was successfully created'}
      #     format.json{ render :show, status: :created, location: @equipment}
      #   else
      #     format.html{ render :new, notice: 'equipment not created'}        
      #     fromat.json{ render json: @equipment.errors, status: :unprocessable_entity}
      #   end
      end   
  end

  def update
    respond_to do |format|
      if @equipment.update(equipment_params)
        format.html{ redirest_to @equipment, notice: 'Equipment was successfully updated'}
        format.json{ render status: :ok, location: @equipment}
      else
        format.html{ render :edit }
        format.josn{ render json: @equipment.errors, status: :unprocessable_entity }
      end
    end
end

  def destroy
    @equipment.destroy

      respond_to do |format|
        format.html{ redirest_to equipment_url, notice: 'equipment was successfully destroyed' }
        format.json{ head :no_content}
  end
end

  private

  def set_equipment
    @equipment = Equipment.find(params[:id])
  end

  def equipment_params
      params.require(:equipment).permit(:equipment_no, :equipment_type_id)
  end

end

