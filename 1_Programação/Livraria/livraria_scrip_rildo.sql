# select nome,login,senha from cliente where nome = "Ana Maria";


select cliente.nome as 'Nome do Cliente', livro.nome as 'Nome do livro', pedido.id_pedido as 'ID do Pedido'
from cliente
join pedido
on pedido.cliente_id = cliente.id_cliente
join livro_pedido
on livro_pedido.pedido_id = pedido.id_pedido
join livro 
on livro.id_livro = livro_pedido.livro_id