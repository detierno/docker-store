Deface::Override.new(
:virtual_path => "spree/admin/orders/customer_details/_form",
:insert_bottom => 'div[data-hook=customer_fields]',
:name => "insert_document",
:text => '<div class="col-md-8"><label>Documento</label><%= f.text_field :preferred_document, :class => "fullwidth form-control",  onkeypress: "return isNumberKey(event)" %><div><em>Somente números</em> (Somente preencher caso o pedido seja como visitante)</div>'
)

script = <<-eos
<script>
function isNumberKey(evt)
  {
    var e = evt || window.event; //window.event is safer, thanks @ThiefMaster
    var charCode = e.which || e.keyCode;
    if (charCode > 31 && (charCode < 47 || charCode > 57))
    return false;
    if (e.shiftKey) return false;
    return true;
 }
 </script>
eos
