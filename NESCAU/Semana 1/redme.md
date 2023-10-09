Entre no inspetor de elementos do navegador e copie o HTML geral

Depois no terminal rode o comando:

```bash
grep -o 'href="/@[a-zA-Z0-9_\-]*"' channels.html | sed 's/href="//;s/"//' | sort | uniq | awk '{print "https://www.youtube.com"$1}' > channels_links.txt
```

1. grep -o 'href="/@[a-zA-Z0-9_\-]*"' channels.html: Este comando procura todas as ocorrências de href="/@..." no arquivo channels.html.

2. sed 's/href="//;s/"//': Remove o prefixo href=" e o sufixo " para obter apenas o valor do atributo href.

3. sort: Ordena as linhas.

4. uniq: Remove as linhas duplicadas.

5. awk '{print "https://www.youtube.com"$0}': Adiciona o prefixo "https://www.youtube.com" a cada linha.

6. '> channels_links.txt': Redireciona a saída para o arquivo channels_links.txt.

---

### Explicação detalhada do awk

No contexto do `awk`, \( \$0 \) refere-se ao registro atual, representa a linha inteira que está sendo processada no momento.

- \( \$0 \) refere-se à linha/registro inteiro.
- \( \$1 \) refere-se ao primeiro campo da linha/registro.
- \( \$2 \) refere-se ao segundo campo, e assim por diante.

Por exemplo, considere a seguinte entrada:

```
John Doe 25
Jane Smith 30
```

Se usássemos `awk '{print $1}'`, a saída seria:

```
John
Jane
```

Mas se usássemos `awk '{print $0}'`, a saída seria a entrada original:

```
John Doe 25
Jane Smith 30
```

No comando `awk '{print "https://www.youtube.com"$0}'`, estamos prefixando cada linha (representada por \( \$0 \)) com a string "https://www.youtube.com".
