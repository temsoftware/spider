use spider
/*MONTADORAS*/
insert into brends (name) values ("CHEVROLET");
insert into brends (name) values ("FIAT");
insert into brends (name) values ("HONDA");
insert into brends (name) values ("VOLKSWAGEN");

/*CARROS*/
insert into cars (name, brend_id) values ("CELTA",  1);
insert into cars (name, brend_id) values ("VECTRA", 1);
insert into cars (name, brend_id) values ("OMEGA",  1);

insert into cars (name, brend_id) values ("PALIO", 2);
insert into cars (name, brend_id) values ("STILO", 2);
insert into cars (name, brend_id) values ("BRAVA", 2);

insert into cars (name, brend_id) values ("CIVIC",  3);
insert into cars (name, brend_id) values ("ACCORD", 3);
insert into cars (name, brend_id) values ("FIT",    3);

insert into cars (name, brend_id) values ("GOL",  4);
insert into cars (name, brend_id) values ("FOX",  4);
insert into cars (name, brend_id) values ("POLO", 4);

/*CORES*/
insert into colors (name) values ("AMARELO");
insert into colors (name) values ("AZUL");
insert into colors (name) values ("BRANCO");
insert into colors (name) values ("CHUMBO");
insert into colors (name) values ("PRATA");
insert into colors (name) values ("PRETO");
insert into colors (name) values ("ROSA");
insert into colors (name) values ("VERDE");
insert into colors (name) values ("VERMELHO");
insert into colors (name) values ("VINHO");

/*COMBUSTIVEL*/
insert into fuels (name) values ("ALCOOL");
insert into fuels (name) values ("DIESEL");
insert into fuels (name) values ("FLEX");
insert into fuels (name) values ("GASOLINA");

/*CAMBIO*/
insert into gears (name) values ("AUTOMATICO");
insert into gears (name) values ("MANUAL");
insert into gears (name) values ("TIPTRONIC");

/*TIPOS*/
insert into type_vehicles (description) values ("CARRO");
insert into type_vehicles (description) values ("TAXI");
insert into type_vehicles (description) values ("MOTO");

/*OPCIONAIS*/
insert into options (description) values ("DIRECAO HIDRAULICA");
insert into options (description) values ("VIDRO ELETRICO");
insert into options (description) values ("TRAVA ELETRICA");
insert into options (description) values ("AR CONDICIONADO");

/*CARROS A VENDA*/
insert into vehicles (amount, note, year, model, doors, finale, km, 
car_id, color_id, gear_id, fuel_id, type_vehicle_id)
  values (10.000, "lindo e maravilhoso", "01/01/2009", "01/01/2010", 5, 7, "1.000",
   7, 5, 3, 4, 1);

/*OPCIONAIS DO MEU CARRO*/
insert into options_vehicles (vehicle_id, option_id) values (1, 1);
insert into options_vehicles (vehicle_id, option_id) values (1, 3);
insert into options_vehicles (vehicle_id, option_id) values (1, 4);

