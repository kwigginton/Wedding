class GuestbookpostsController < ApplicationController
  skip_before_action :authorize, only: [:index, :new, :create]
  # GET /guestbookposts
  # GET /guestbookposts.json
  def index
    @guestbookposts = Guestbookpost.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @guestbookposts }
    end
  end

  # GET /guestbookposts/1
  # GET /guestbookposts/1.json
  def show
    @guestbookpost = Guestbookpost.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @guestbookpost }
    end
  end

  # GET /guestbookposts/new
  # GET /guestbookposts/new.json
  def new
    @guestbookpost = Guestbookpost.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @guestbookpost }
    end
  end

  # GET /guestbookposts/1/edit
  def edit
    @guestbookpost = Guestbookpost.find(params[:id])
  end

  # POST /guestbookposts
  # POST /guestbookposts.json
  def create
    @guestbookpost = Guestbookpost.new(post_params)

    respond_to do |format|
      if @guestbookpost.save
        format.html { redirect_to guestbookposts_url, notice: 'Guestbookpost was successfully created.' }
        format.json { render json: @guestbookpost, status: :created, location: @guestbookpost }
      else
        format.html { render action: "new" }
        format.json { render json: @guestbookpost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /guestbookposts/1
  # PUT /guestbookposts/1.json
  def update
    @guestbookpost = Guestbookpost.find(params[:id])

    respond_to do |format|
      if @guestbookpost.update_attributes(params[:guestbookpost])
        format.html { redirect_to @guestbookpost, notice: 'Guestbookpost was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @guestbookpost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /guestbookposts/1
  # DELETE /guestbookposts/1.json
  def destroy
    @guestbookpost = Guestbookpost.find(params[:id])
    @guestbookpost.destroy

    respond_to do |format|
      format.html { redirect_to guestbookposts_url }
      format.json { head :no_content }
    end
  end
  
  private
  def post_params
    params.require(:guestbookpost).permit(:body, :email, :name, :created_at)
  end
  
end
