variable "project" {
  type =string
  default = "roboshop"
}

variable "environment" {
  type =string
  default = "dev"
}

variable "sg_name" {
  type =string
  default = "mongodb"
}

variable "sg_names" {
   type = list 
   default = [
      # Database
      "mongodb", "redis", "mysql", "rabbitmq",

      # Backend
      "catalogue", "user", "cart", "shipping", "payment",

      # Backend alb
      "backend_alb",

      # Frontend
      "frontend",

      # Frontend alb
      "frontend_alb",

      # Bastion
      "bastion"
   ]
}