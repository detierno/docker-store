Deface::Override.new(:virtual_path  => "spree/address/_form",
                     :insert_after => "p.form-group:eq(5)",
                     :partial          => "spree/shared/brazilian_address_form",
                     :name          => "neighborhood_field")
