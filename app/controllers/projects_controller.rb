class ProjectsController < ApplicationController
before_action :logged_in, except: [:index, :show]

  def index
    @projects = Project.all
  end

  def my_projects
    locate_my_organization
    @projects = Project.where(organization_id: @organization.id)
  end

  def show
    @project = Project.find(params[:id])
    locate_organization
    @items = @project.items
    @percent_complete = (@project.total_donated/@project.total_requested*100).ceil
    @percent_remaining = 100 - @percent_complete
    if @project.items.count > 0
      get_subtotal(@project)
    end

  end

  def new
    @project = Project.new(project_params[:project])
    locate_my_organization
  end

  def create
    locate_my_organization
    @project = Project.create(project_params[:project])
    @project.organization_id = @organization.id
    @project.expires_on = DateTime.now + 3.month
    if @project.save
      redirect_to item_search_path(@current_user.username, @project.id)
    else
      redirect_to new_project_path
    end
  end

  def edit
    locate_project
    locate_organization
  end

  def update
    @project = Project.find(params[:id])
    @project.update(project_params[:project])
    redirect_to my_projects_path(@current_user.username)
  end

  private

  def locate_project
    @project = Project.find_by(id: params[:id])
  end

  def locate_my_organization
    @organization = Organization.find_by(user_id: @current_user.id)
  end

  def locate_organization
    @organization = Organization.find_by(id: @project.organization_id)
  end

  def project_params
    params.permit(project: [:title, :description, :project_details, :organization_details, :image, :user_id, :amount])
  end

  def get_subtotal(project)
    @subtotal = 0
    project.items.each do |item|
      @subtotal+=item.total_cost
    end
  end
end
