class EmployeesController < ApplicationController

  def index
    @employees = Employee.all  
  end

  def create
    @employee = Employee.create(
                                first_name: params[:first_name],
                                last_name: params[:last_name],
                                birthdate: params[:birthdate],
                                email: params[:email],
                                ssn: params[:ssn]

                                )
    render :show
  end

  def update
    @player = Player.find(params[:id])
    @player.update(
                    first_name: params[:first_name],
                    last_name: params[:last_name],
                    birthdate: params[:birthdate],
                    email: params[:email],
                    ssn: params[:ssn]

                  )
    render :show
  end

  def show
    @employee = Employee.find(params[:id])
  end

  def destroy
    @employee = Employee.find(params[:id])
    @employee.destroy
    render json: {message: "Successfully Deleted Employee"}
  end

end
