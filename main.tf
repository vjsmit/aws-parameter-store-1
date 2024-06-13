resource "aws_ssm_parameter" "param" {
  count = length(var.params)
  name  = var.params[count.index].name
  type  = var.params[count.index].type
  value = var.params[count.index].value
}

variable "params" {
  default = [
    {name= "roboshop.dev.frontend.catalogue_url",value = "http://catalogue-dev.smitdevops.store:8080/", type = "String"},
    {name= "roboshop.dev.frontend.user_url",value = "http://user-dev.smitdevops.store:8080/", type = "String"},
    {name= "roboshop.dev.frontend.cart_url",value = "http://cart-dev.smitdevops.store:8080/", type = "String"},
    {name= "roboshop.dev.frontend.shipping_url",value = "http://shipping-dev.smitdevops.store:8080/", type = "String"},
    {name= "roboshop.dev.frontend.payment_url",value = "http://payment-dev.smitdevops.store:8080/", type = "String"},
    {name= "roboshop.dev.cart.redis_host",value = "redis-dev.smitdevops.store:8080/", type = "String"},
    {name= "roboshop.dev.cart.catalogue_host",value = "catalogue-dev.smitdevops.store:8080/", type = "String"},
    {name= "roboshop.dev.cart.catalogue_port",value = "8080", type = "String"},
    {name= "roboshop.dev.catalogue.mongo",value = "true", type = "String"},
    {name= "roboshop.dev.catalogue.mongo_url",value = "mongo-dev.smitdevops.store", type = "String"},
    {name= "roboshop.dev.shipping.cart_endpoint",value = "cart-dev.smitdevops.store:8080", type = "String"},
    {name= "roboshop.dev.shipping.db_host",value = "mysql-dev.smitdevops.store", type = "String"},
    {name= "roboshop.dev.payment.cart_host",value = "cart-dev.smitdevops.store", type = "String"},
    {name= "roboshop.dev.payment.cart_port",value = "8080", type = "String"},
    {name= "roboshop.dev.payment.user_host",value = "user-dev.smitdevops.store", type = "String"},
    {name= "roboshop.dev.payment.user_port",value = "8080", type = "String"},
    {name= "roboshop.dev.payment.amqp_host",value = "rabbitmq-dev.smitdevops.store", type = "String"},
    {name= "roboshop.dev.payment.amqp_user",value = "roboshop", type = "String"},
    {name= "roboshop.dev.user.mongo",value = "true", type = "String"},
    {name= "roboshop.dev.user.redis_host",value = "redis-dev.smitdevops.store", type = "String"},
    {name= "roboshop.dev.user.mongo_url",value = "mongodb://mongo-dev.smitdevops.store:27017/users", type = "String"},


    ##secret
    {name= "roboshop.dev.payment.amqp_pass",value = "roboshop123", type = "SecureString"},
  ]
}