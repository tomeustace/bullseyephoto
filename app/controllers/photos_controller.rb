class PhotosController < ApplicationController
  layout 'bullseye'
  
  # GET /tickets
  # GET /tickets.xml
  def index
    @photos = Photo.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @photos }
    end
  end
  
  # GET /tickets/new
  # GET /tickets/new.xml
  def new
    @photos = Photo.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @photos }
    end
  end
  
  # GET /tickets/1
  # GET /tickets/1.xml
  def show
    @photos = Photo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @photos }
    end
  end
  
  # POST /tickets
  # POST /tickets.xml
  def create
    @photos = Photo.new(params[:photo])

    respond_to do |format|
      if @photos.save
        flash[:notice] = 'photo was successfully created.'
        format.html { redirect_to(@photos) }
        format.xml  { render :xml => @photos, :status => :created, :location => @photos }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @photos.errors, :status => :unprocessable_entity }
      end
    end
  end
  
end
