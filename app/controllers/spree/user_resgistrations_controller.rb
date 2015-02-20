Spree::UserRegistrationsController.class_eval do
  private
    def spree_user_params
      params.require(:spree_user).permit(:cpf, :cnpj, :state_registry, :company_name, :account_type)
    end
end
