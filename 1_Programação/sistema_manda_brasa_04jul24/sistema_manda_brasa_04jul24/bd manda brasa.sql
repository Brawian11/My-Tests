use bd_mandabrasa;

select * from cliente;
insert into cliente values (null, 'Carlos Roberto', '485.698.456-85', 'rua 14 de Março, 200', '(91) 98563-7845');
insert into cliente values (null, 'Lurdes Trindade', '652.357.495-00', 'Av. Nazaré, 2050', '(91) 99756-2348');


select * from funcionario;
insert into funcionario values (null, 'Enzo Souza', '052.338.128-92', 'Atendente', '(91) 98563-5268');
insert into funcionario values (null, 'Ana Rosa', '526.648.953-56', 'Atendente', '(91) 99364-6564');
insert into funcionario values (null, 'Gael Benício', '536.489.659-33', 'Chapista', '(91) 998645-7823');
insert into funcionario values (null, 'César Augusto', '659.489.369-45', 'Auxiliar', '(91) 98123-3455');


select * from entrega;
insert into entrega values (null, 'Ifood');
insert into entrega values (null, 'Balcao');


select * from produto;
insert into produto values (null, 'Brasa Clássico', 'Pão brioche selado, blend 170g e queijo cheddar finalizado com molho cheddar da casa', '20');
insert into produto values (null, 'Brasa Salada', 'Pão brioche selado, blend 170g e queijo cheddar, alface americano, tomate e maionese', '20');


select * from estoque;
insert into estoque values (null, STR_TO_DATE('06/06/2024', '%d/%m/%Y'), STR_TO_DATE('06/07/2024', '%d/%m/%Y'), '10', 1);


select * from pedido;
insert into pedido values (null, STR_TO_DATE('06/06/2024', '%d/%m/%Y'), 1, 1, 2, 'Cartão de Crédito');


select * from item_pedido;
insert into item_pedido values (null, 'Refri, Molho da casa', '1', 1, 1);





select pedido.codigo as 'código', date_format(pedido.data,'%d/%m/%y') as 'data', funcionario.nome as 'Atendente', cliente.nome as 'cliente', entrega.codigo as 'Entrega' from pedido, funcionario, cliente, entrega where 
pedido.codigo_funcionario = funcionario.codigo and pedido.codigo_cliente = cliente.codigo and pedido.codigo_entrega = entrega.codigo;



