class CampaignController < ApplicationController
  layout 'standart'
  def list
    @campaigns = Campaign.find(:all)
  end
  
  def show
    @campaign = Campaign.find(params[:id])    
  end
  
  def new
    @campaign = Campaign.new    
  end
  
  def create
    @campaign = Campaign.new(params[:campaign])
    if @campaign.save
      redirect_to :action => 'list'
    else      
      render :action => 'new'
    end
  end
  
  def edit
    @campaign = Campaign.find(params[:id])
  end
  
  def update
    @campaign = Campaign.find(params[:id])
    if @campaign.update_attributes(params[:campaign])
      redirect_to :action => 'show', :id => @campaign
    else
      render :action => 'edit'
    end
  end
  
  def delete
    Campaign.find(params[:id]).destroy
    redirect_to :action => 'list'
  end
end
