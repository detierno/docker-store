Spree::Admin::Orders::CustomerDetailsController.class_eval do
  private
  def order_params
    params.require(:order).permit(
      :email,
      :preferred_document,
      :use_billing,
      bill_address_attributes: permitted_address_attributes,
      ship_address_attributes: permitted_address_attributes
    )
  end
end
