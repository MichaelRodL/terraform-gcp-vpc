provider "google" {
    project =  var.project
    region = var.region
    zone = var.zone
}

resource "google_compute_network" "vpc_network" {
   
  name = var.vpc_name
  auto_create_subnetworks =  false


}

resource "google_compute_subnetwork" "subnet" {
  
    name = var.subnet_name
    ip_cidr_range = "10.0.0.0/24"
    region = var.region
    network =  google_compute_network.vpc_network
    depends_on = [ google_compute_network.vpc_network]    
    
}

