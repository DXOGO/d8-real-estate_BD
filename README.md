# Projeto Final de Base de Dados 2020/2021

Foi criada uma base de dados de uma imobiliária e interface gŕafica para uso de clientes.

## Authors: 
Diogo Cruz: [DXOGO](https://www.github.com/DXOGO)  
Artur Romão: [artur-romao](https://www.github.com/artur-romao)

## Updates desde 24/07/2021
No dia inicial de entrega o maior problema que enfrentámos foi não ter ainda implementado os elementos de SQL no Visual Basic.  
Para além da **adição do relatório final** fizemos as seguintes alterações e progressos:

### SQL
Remoção das SP's que se encontravam dentro de outras SP's e substitídas com Transações  
Removidas bastantes funções, views e triggers que não estavam a ser usados  
Inserções e SP's no DML foram atualizados face às alterações das SP's 
Clean-up ao código em geral

### Visual Basic
Filtro de selecionar imóveis com tipo de negócios específicos atualizado  
Estabelecida a ligação na interface entre os imóveis dos proprietários e os interessados que fazem propostas, ou seja, propostas agora feitas pelos interessados podem ser aceites pelos proprietários, fazendo que passem da tabela de imóveis no mercado (e, consequentemente, as suas dependências) para a tabela de imóveis vendidos.  
É agora possível agendar uma marcação a um imóvel. Esta é adicionada à tabela de marcações (existe um trigger que testa se a data da marcação é válida ou não).
O registo de um utilizador na base de dados está agora 100% operacional, bem como a encriptação da sua password (via stored procedure: cp_create_pessoa).


