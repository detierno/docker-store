Deface::Override.new(:virtual_path  => "spree/admin/shared/_address_form",
                     :insert_after => "[data-hook=address_fields] div:eq(5)",
                     :partial          => "spree/admin/shared/brazilian_address_form",
                     :name          => "neighborhood_field")
