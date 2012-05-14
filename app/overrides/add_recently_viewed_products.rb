#Deface::Override.new(:virtual_path => 'spree/shared/_products',
                     #:name => 'add_recently_viewed_products_to_products_index',
                     #:insert_after => ".recently-viewed-block[data-hook]",
                     #:partial => 'spree/shared/recently_viewed_products')

Deface::Override.new(:virtual_path => 'spree/products/_taxons',
                     :name => 'add_recently_viewed_products_to_products_taxons',
                     :insert_after => "#taxon-crumbs[data-hook]",
                     :partial => 'spree/shared/recently_viewed_products')
