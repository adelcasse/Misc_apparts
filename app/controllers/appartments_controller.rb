class AppartmentsController < ApplicationController
  # GET /appartments
  # GET /appartments.xml
  def index
    @appartments = Appartment.all.desc(:like, :note).asc(:city)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @appartments }
    end
  end

  # GET /appartments/1
  # GET /appartments/1.xml
  def show
    @appartment = Appartment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @appartment }
    end
  end

  # GET /appartments/new
  # GET /appartments/new.xml
  def new
    @appartment = Appartment.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @appartment }
    end
  end

  # GET /appartments/1/edit
  def edit
    @appartment = Appartment.find(params[:id])
  end

  # POST /appartments
  # POST /appartments.xml
  def create
    @appartment = Appartment.new(params[:appartment])

    respond_to do |format|
      if @appartment.save
        format.html { redirect_to(@appartment, :notice => 'Appartment was successfully created.') }
        format.xml  { render :xml => @appartment, :status => :created, :location => @appartment }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @appartment.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /appartments/1
  # PUT /appartments/1.xml
  def update
    @appartment = Appartment.find(params[:id])

#    if not params[:like].nil?
#      if @appartment.like==true
#      then
#        @appartment.like = false
#      else
#        @appartment.like = true
#      end
#      @appartment.save
#      respond_to do |format|
#        format.html { redirect_to(appartments_url) }
#        format.xml  { head :ok }
#      end
#    end

    respond_to do |format|
      if @appartment.update_attributes(params[:appartment])
        format.html { redirect_to(@appartment, :notice => 'Appartment was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @appartment.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /appartments/1
  # DELETE /appartments/1.xml
  def destroy
    @appartment = Appartment.find(params[:id])
    @appartment.destroy

    respond_to do |format|
      format.html { redirect_to(appartments_url) }
      format.xml  { head :ok }
    end
  end

  def like
    @appartment = Appartment.find(params[:id])
    if @appartment.like
    then
      @appartment.like = false
    else
      @appartment.like = true
    end
    @appartment.save
    respond_to do |format|
      format.html { redirect_to(appartments_url) }
      format.xml  { head :ok }
    end
  end
end
