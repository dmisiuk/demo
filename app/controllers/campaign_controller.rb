class CampaignController < ApplicationController
  layout 'standart'
  def list

    @campaigns = Campaign.find(:all, :order => params[:sort]||'created_at')
  end
  
  def show
    @campaign = Campaign.find(params[:id])    
  end
  
  def new
    @campaign = Campaign.new
    @types = Type.find(:all)
    @statuses = Status.find(:all)
  end
  
  def create
    @campaign = Campaign.new(params[:campaign])
    if @campaign.save
      redirect_to :action => 'list'
    else      
      @types = Type.find(:all)
      @statuses = Status.find(:all)
      render :action => 'new'
    end
  end
  
  def edit
    @campaign = Campaign.find(params[:id])
    @types = Type.find(:all)
    @statuses = Status.find(:all)
  end
  
  def update
    @campaign = Campaign.find(params[:id])
    if @campaign.update_attributes(params[:campaign])
      redirect_to :action => 'show', :id => @campaign
    else
      @types = Type.find(:all)
      @statuses = Status.find(:all)
      render :action => 'edit'
    end
  end
  
  def delete
    Campaign.find(params[:id]).destroy
    redirect_to :action => 'list'
  end
  
end
