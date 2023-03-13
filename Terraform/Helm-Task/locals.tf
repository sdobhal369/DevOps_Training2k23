## Locals to manipulate the variable used in main.tf

locals {
    
    timeregex = "${replace("${timestamp()}", "/[- TZ:]/", "")}"
}