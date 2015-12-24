class CustomFieldDefinitionsController < ApplicationController
  before_action :set_custom_field_definition, only: [:show, :edit, :update, :destroy]

  # GET /custom_field_definitions
  # GET /custom_field_definitions.json
  def index
    @custom_field_definitions = CustomFieldDefinition.all
  end

  # GET /custom_field_definitions/1
  # GET /custom_field_definitions/1.json
  def show
  end

  # GET /custom_field_definitions/new
  def new
    @custom_field_definition = CustomFieldDefinition.new
  end

  # GET /custom_field_definitions/1/edit
  def edit
  end

  # POST /custom_field_definitions
  # POST /custom_field_definitions.json
  def create
    @custom_field_definition = CustomFieldDefinition.new(custom_field_definition_params)

    respond_to do |format|
      if @custom_field_definition.save
        format.html { redirect_to @custom_field_definition, notice: 'Custom field definition was successfully created.' }
        format.json { render :show, status: :created, location: @custom_field_definition }
      else
        format.html { render :new }
        format.json { render json: @custom_field_definition.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /custom_field_definitions/1
  # PATCH/PUT /custom_field_definitions/1.json
  def update
    respond_to do |format|
      if @custom_field_definition.update(custom_field_definition_params)
        format.html { redirect_to @custom_field_definition, notice: 'Custom field definition was successfully updated.' }
        format.json { render :show, status: :ok, location: @custom_field_definition }
      else
        format.html { render :edit }
        format.json { render json: @custom_field_definition.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /custom_field_definitions/1
  # DELETE /custom_field_definitions/1.json
  def destroy
    @custom_field_definition.destroy
    respond_to do |format|
      format.html { redirect_to custom_field_definitions_url, notice: 'Custom field definition was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_custom_field_definition
      @custom_field_definition = CustomFieldDefinition.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def custom_field_definition_params
      params.require(:custom_field_definition).permit(:belongs_to_table, :name, :field_type, :default_string, :default_integer, :default_boolean, :default_text, :default_decimal)
    end
end
