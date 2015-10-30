class ApplicationController < ActionController::Base
  before_action :current_user, :total_shelters, :total_donors, :total_projects, :total_amount_donated, :total_volunteers
  protect_from_forgery with: :exception

  def current_user
    @current_user = User.find_by(id: session[:user_id])
  end

  def logged_in
    redirect_to login_path unless current_user
  end

  def total_shelters
    @organization_count = Organization.count
  end

  def total_volunteers
    @volunteer_count = Volunteer.count
  end

  def total_donors
    @donor_count = User.where(donor: true).count
  end

  def total_projects
    @approved_project_count = Project.where(project_approval: 'approved').count
  end

  def total_amount_donated
    @active_projects = Project.where('project_approval = ? AND funding_status = ?', 'approved', 'not funded')
    @total_given = 0
    @active_projects.each do |project|
      @total_given += project.total_donated
    end
  end
end
