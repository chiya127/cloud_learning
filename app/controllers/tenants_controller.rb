class TenantsController < ApplicationController

  before_action :find_tenant, only: [:show, :edit, :update, :destroy]

  def index
    @tenants = Tenant.all
  end

  def new
    @tenant = Tenant.new
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
    @tenant.destroy
  end

  private

  def find_tenant
    @tenant = Tenant.find(params[:id])
  end

  def tenant_params
  end
end
