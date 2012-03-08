class EventsController < ApplicationController
  layout 'phcfm'
  # GET /news_events
  # GET /news_events.json
  def index
    @events = Event.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @events }
    end
  end

  # GET /news_events/1
  # GET /news_events/1.json
  def show
    @event = Event.find(params[:id])
    if request.path != event_path(@event)
      return redirect_to @event, :status => :moved_permanently
    end           

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @event }
    end
  end

  # GET /news_events/new
  # GET /news_events/new.json
  def new
    @event = Event.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @event }
    end
  end

  # GET /news_events/1/edit
  def edit
    @event = Event.find(params[:id])
  end

  # POST /news_events
  # POST /news_events.json
  def create
    @event = Event.new(params[:event])

    respond_to do |format|
      if @event.save
        format.html { redirect_to @event, :notice => 'News was successfully created.' }
        format.json { render :json => @event, :status => :created, :location => @event }
      else
        format.html { render :action => "new" }
        format.json { render :json => @event.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /news_events/1
  # PUT /news_events/1.json
  def update
    @event = Event.find(params[:id])

    respond_to do |format|
      if @event.update_attributes(params[:event])
        format.html { redirect_to @event, :notice => 'Newswas successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @event.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /news_events/1
  # DELETE /news_events/1.json
  def destroy
    @event = Event.find(params[:id])
    @event.destroy

    respond_to do |format|
      format.html { redirect_to events_url }
      format.json { head :no_content }
    end
  end
end
