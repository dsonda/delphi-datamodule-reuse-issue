# US

## What's the problem?

The Orders form creates a private instance of Customers datamodule.
When user opens Orders form before Customers form, the Customers datasource component seems to bind to the dataset in the private instance from Orders form, instead of its datamodule/dataset set up in project time.

## How to reproduce?

 1. Compile and execute the TestProject
 2. On Main Form, click on Orders button
 3. On Main Form, click on Customers button
 4. Close Orders form
 5. Customers form loses its dataset

# PT_BR

## Qual é o problema?

O formulário de Orders (vendas) cria uma instância privada do datamodule de Customers (clientes).
Quando o usuário abre o formulário de Orders antes do formulário de Customers, o datasource do Customers parece ligar com o dataset na instância privada do formulário de Orders, em vez do datamodule/dataset configurados em tempo de projeto.

## Como reproduzir?

 1. Compile e excute o projeto TestProject
 2. No Main Form, clique no botão Orders
 3. No Main Form, clique no botão Customers
 4. Feche o formulário de Orders
 5. O formulário de Customers perde o dataset
 
## Solução

Primeiro, agradeço ao @kmerlotti pela explicação abaixo:

> Cara, é o seguinte: DMs são armazenados em uma lista global, dentro do objeto Screen, assim como os forms...
> Quando vc cria o frmOrders e cria uma instância do dmCustomers sem alterar seu nome, um novo item é adicionado em Screen.FDataModules
> Quando vc cria em seguida o frmCustomers, vc até cria outro DM, mas este fica com o nome dmCustomers_1...
> Aí quando o datasource vai consultar pelo seu dataset (dmCustomers.cds) ele recorre àquela lista é obviamente encontra o dm com "nome errado"
> Logo, quando vc destrói o frmOrders vc tbm destrói o dm ao qual o datasource em frmCustomers está ligado.
> Resumindo, isso não é um bug, é o comportamento esperado :)
> O x da questão é realmente nomear as instâncias locais de DMs... ou então sempre associar os datasources manualmente

Segundo, o problema é resolvido alterando o nome do datamodule criado no frmOrder:

```delphi
procedure TfrmOrder.FormCreate(Sender: TObject);
begin
  inherited;
  dtmOrder := TdtmOrder.Create(nil);
  FdtmCustomer := TdtmCustomer.Create(nil);
  // solution
  FdtmCustomer.Name := 'FdtmCustomer';
end;
```
