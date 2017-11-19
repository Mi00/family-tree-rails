class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: :homepage

  # GET /users
  # GET /users.json
  def index
    @users = User.all
    respond_to do |format|
  		format.html
  		format.json {
  			render json: @users
  		}
  		format.csv {
  			send_data @users.to_csv
  		}
  		format.pdf do
  			render pdf: "file", 
  				   template: "users/index.pdf.erb"
  		end
  	end
  end

  def homepage
  end

  # GET /users/1
  # GET /users/1.json
  def show
  	respond_to do |format|
  		format.html
  		format.json {
  			render json: @user
  		}
  		format.csv {
  			send_data @user.to_csv
  		}
  		format.pdf do
  			render pdf: "file", 
  				   template: "users/show.pdf.erb"
  		end
  	end
  end

  # GET /users/1/edit
  def edit
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to user_path(@user.id), notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: user_path(@user.id) }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_path, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit()
    end

    def user_params
    params.require(:user).permit(:first_name, :last_name, :sex, :birthdate, :address, :phone_number)
  end
end
