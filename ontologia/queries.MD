- Publicações em revista
```
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX owl: <http://www.w3.org/2002/07/owl#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
PREFIX xsd: <http://www.w3.org/2001/XMLSchema#>
PREFIX old: <http://sbc.ime.usp.br/ontologias/cvlates.owl#>
PREFIX FOAF:<http://www.ime.usp.br/~renata/FOAF-modified#>
SELECT ?aluno ?prof ?artigo
WHERE {
  ?aluno old:Orientado_por ?prof.
  ?aluno FOAF:publications ?artigo.
  ?artigo old:Tem_autores ?prof.
  ?artigo old:Publicado_em_revista ?revista.
  FILTER(?revista = old:Discrete_Applied_Mathematics)
}
```

- Pessoa estudou na Europa
```
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX owl: <http://www.w3.org/2002/07/owl#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
PREFIX xsd: <http://www.w3.org/2001/XMLSchema#>
PREFIX old: <http://sbc.ime.usp.br/ontologias/cvlates.owl#>
PREFIX self: <http://sbc.ime.usp.br/ontologias/cvlates-inferred.owl#>
PREFIX FOAF:<http://www.ime.usp.br/~renata/FOAF-modified#>
SELECT ?pessoa ?uni
WHERE {
  ?pessoa old:Estudou_em ?uni.
  ?uni old:Localizado_em ?euro.
  FILTER(?euro = self:Europa)
}
```

- Criar Regra SWRL
1. Criar uma nova classe/propriedade/etc. (por exemplo: `Teste_SWRL`).
2. Tab SparQL Query -> Rules -> Add Rule
3. Adicionar nova regra (por exemplo: `Person(?subject) -> Teste_SWRL(?subject)`).
4. Menu Reasoner -> Synchronize Reasoner
5. A classe será populada de acordo com a regra SWRL.
