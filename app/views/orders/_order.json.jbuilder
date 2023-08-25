json.id order.id
json.user order.user
json.subtotal order.subtotal
json.tax order.tax
json.total order.total

# references partial for cp data render
json.carted_products order.carted_products, partial: "carted_products/carted_product", as: :carted_product

json.created_at order.created_at
json.updated_at order.updated_at
