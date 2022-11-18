-- Selecionar o nome, dia do mês e valor da parcela para clientes que estão inadimplentes.

select pessoas.nome, extract (day from dt_pagamento) as DIA_MES, contratos.valor_parcela
from contratos
inner join pessoas
on pessoas.contrato_id = contratos.id
inner join pagamentos
on pagamentos.pessoa_id = pessoas.id
where pessoas.inadimplente = 'S'
ORDER BY 1 