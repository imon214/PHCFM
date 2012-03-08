class PhcfmsController < ApplicationController
  layout 'phcfm'
  
  # GET /phcfms
  # GET /phcfms.json
  def index
    @phcfms = Phcfm.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @phcfms }
    end
  end
  
  def count
    @phcfm = Phcfm.find(params[:id])
    @comment = @phcfm.comments.count(params[:comment])
  end
  
  def announcement
    index
  end

  # GET /phcfms/1
  # GET /phcfms/1.json
  def show
    @phcfm = Phcfm.find(params[:id])
    #@comment = CommentToPhcfm.new( :phcfm => @phcfm )
    if request.path != phcfm_path(@phcfm)
      return redirect_to @phcfm, :status => :moved_permanently
    end          

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @phcfm }
    end
  end

  # GET /phcfms/new
  # GET /phcfms/new.json
  def new
#    unless current_user_session
#       flash[:notice] = "You must be logged in first to create Article."
#      redirect_to login_url
#      return
#    end
    
    @phcfm = Phcfm.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @phcfm }
    end
  end

  # GET /phcfms/1/edit
  def edit
    @phcfm = Phcfm.find(params[:id])
    
#    unless current_user_session
#       flash[:notice] = "You must be logged in first to edit article."
#      redirect_to login_url
#      return
#    end
  end

  # POST /phcfms
  # POST /phcfms.json
  def create
#    @phcfm = Phcfm.new(params[:phcfm].merge(:author => current_user.username))
    @phcfm = Phcfm.new(params[:phcfm])

    respond_to do |format|
      if @phcfm.save
        format.html { redirect_to @phcfm, :notice => 'Article was successfully created.' }
        format.json { render :json => @phcfm, :status => :created, :location => @phcfm }
      else
        format.html { render :action => "new" }
        format.json { render :json => @phcfm.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /phcfms/1
  # PUT /phcfms/1.json
  def update
    @phcfm = Phcfm.find(params[:id])

    respond_to do |format|
      if @phcfm.update_attributes(params[:phcfm])
        format.html { redirect_to @phcfm, :notice => 'Article was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @phcfm.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /phcfms/1
  # DELETE /phcfms/1.json
  def destroy
    @phcfm = Phcfm.find(params[:id])
#    unless current_user_session
#       flash[:notice] = "You must be logged in first to delete this article."
#      redirect_to login_url
#      return
#    end
    @phcfm.destroy

    respond_to do |format|
      format.html { redirect_to phcfms_url }
      format.json { head :no_content }
    end
  end
end
