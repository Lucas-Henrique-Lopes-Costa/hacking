# Instruções de Uso

* install_tools.sh:
  Execute este script para instalar as ferramentas necessárias. Lembre-se de executá-lo com privilégios de superusuário (usando sudo) para garantir que todas as ferramentas sejam instaladas corretamente.

```bash
sudo bash install_tools.sh
```

* Verificar se deu certo:

```bash
amass -version
findomain -V
subfinder -version
assetfinder -h
```

* run_tools.sh:
  Execute este script para rodar as ferramentas em um domínio específico. Substitua yourdomain.com pelo domínio de sua escolha.

```bash
bash run_tools.sh yourdomain.com
```
