class CommentsController < ApplicationController
  before_filter :get_parent
  
  layout 'phcfm'

  # GET /comments/new
  # GET /comments/new.json
  def new
#    @comment = Comment.new
     @comment = @parent.comments.build
    
    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @comment }
    end
  end

  # GET /comments/1/edit
  def edit
    @comment = Comment.find(params[:id])
    #@user = current_user
  end

  # POST /comments
  # POST /comments.json
  def create
    unless current_user
       flash[:notice] = "You must be logged in first to comment."
      redirect_to login_url
      return
    end
#    @comment = Comment.new(params[:comment].merge(:name => current_user.username))
#    @comment = Comment.new(params[:comment])
     @comment = @parent.comments.build(params[:comment])

    respond_to do |format|
      if @comment.save
        format.html { redirect_to @comment.article, :notice => 'Comment was successfully created.' }
        #format.json { render :json => @comment, :status => :created, :location => @comment }
      else
        flash[:error] = 'Error creating comment'
        redirect_to(@comment.article)
        #format.html { render :action => "new" }
        #format.json { render :json => @comment.errors, :status => :unprocessable_entity }
      end
    end
  end

  protected

  def get_parent
    @parent = Article.find_by_id(params[:article_id]) if params[:article_id]
    @parent = Comment.find_by_id(params[:comment_id]) if params[:comment_id]
    
    redirect_to root_path unless defined?(@parent)
  end

  # DELETE /comments/1
  # DELETE /comments/1.json
#  def destroy
#    unless current_user_session
#       flash[:notice] = "You must be logged in first to delete this comment."
#      redirect_to login_url
#      return
#    end
#    @comment = Comment.find(params[:id])
#    @comment.destroy

#    respond_to do |format|
#      redirect_to(@comment.phcfm)
#      format.html { redirect_to comment_to_phcfms_url }
#      format.json { head :no_content }
#    end
#  end
#end

  # GET /comments
  # GET /comments.json
#  def index
#    @comments = Comment.all
#
#    respond_to do |format|
#      format.html # index.html.erb
#      format.json { render :json => @comments }
#    end
#  end

  # GET /comments/1
  # GET /comments/1.json
#  def show
#    @comment = Comment.find(params[:id])
#
#    respond_to do |format|
#      format.html # show.html.erb
#      format.json { render :json => @comment }
#    end
#  end


  # PUT /comments/1
  # PUT /comments/1.json
#  def update
#    @comment = Comment.find(params[:id])
#
#    respond_to do |format|
#      if @comment.update_attributes(params[:comment])
#        format.html { redirect_to @comment, :notice => 'Comment to phcfm was successfully updated.' }
#        format.json { head :no_content }
#      else
#        format.html { render :action => "edit" }
#        format.json { render :json => @comment.errors, :status => :unprocessable_entity }
#      end
#    end
  end
