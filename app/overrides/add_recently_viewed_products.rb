# Deface::Override.new(virtual_path: "spree/shared/_products",
#                      name:         "add_recently_viewed_products_to_products_index",
#                      insert_after: "#products[data-hook], [data-hook='products']",
#                      partial:      "spree/shared/recently_viewed_products")

Deface::Override.new(virtual_path:  "spree/products/show",
                     name:          "add_recently_viewed_products_to_products_taxons",
                     insert_bottom: "#related-items[data-hook], [data-hook='related-items']",
                     partial:       "spree/shared/recently_viewed_products")
