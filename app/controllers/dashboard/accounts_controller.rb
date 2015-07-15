class Dashboard::AccountsController < Dashboard::BaseDashboardController
  before_action :load_instance, only: [:show, :edit, :update, :destroy]
  before_action :create_instance, only: [:new, :create]
  before_action :set_params, only: [:create, :update]

  def index
    @accounts = Account.all
  end

  def new
  end

  def create
    if @account.save
      redirect_to dashboard_accounts_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @account.save
      redirect_to dashboard_accounts_path
    else
      render :edit
    end
  end

  def destroy
    @account.destroy
    redirect_to dashboard_accounts_path
  end

  private
  def load_instance
    @account = Account.find params[:id]
  end

  def account_params
    if params[:account]
      params.require(:account).permit Account::DEFAULT_UPDATABLE_ATTRIBUTES
    end
  end

  def create_instance
    @account = Account.new
  end

  def set_params
    @account.assign_attributes account_params
  end
end