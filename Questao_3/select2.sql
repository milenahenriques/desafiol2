-- Selecionar o nome e valor total pago de clientes com pagamento completo

select pessoas.nome, (valor_parcela * parcelas) as VALOR_TOTAL
from contratos
inner join pessoas
on pessoas.contrato_id = contratos.id
where pessoas.inadimplente = 'N'