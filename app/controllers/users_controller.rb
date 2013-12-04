class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
    @current_guests = User.where("arrival_date <= ?", Date.today).where("departure_date >= ?", Date.today).order("arrival_date DESC, departure_date DESC, id DESC")
    @past_guests = User.where("departure_date < ?", Date.today).order("departure_date DESC, arrival_date DESC, id DESC")
    @upcoming_guests = User.where("arrival_date > ?", Date.today).order("arrival_date DESC, departure_date DESC, id DESC")
  end

  # GET /users/1
  # GET /users/1.json
  def show

  end

  # GET /users/new
  def new

  end

  # GET /users/1/edit
  def edit
    if current_user
      @user = User.find(current_user.id)
      @residents = Resident.all.map { |r| [r.name, r.id] }
    else
      redirect_to root_url
    end
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)
    respond_to do |format|
      if @user.save
        format.html { redirect_to root_path, notice: 'User was successfully created.' }
        format.json { render action: 'show', status: :created, location: @user }
      else
        format.html { render action: 'new' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        UserMailer.user_created(@user).deliver
        format.html { redirect_to root_url, notice: 'User was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url }
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
      params.require(:user).permit(:uid, :name, :email, :host, :arrival_date, :departure_date, :where_from, :why_in_sf, :provider, :oauth_token, :oauth_expires_at)
    end
end
