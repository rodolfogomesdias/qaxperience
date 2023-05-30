

Executa arquivo '.robot'
```bash
python3 -m robot -d ./logs cadastro.robot
```

Executa código pyton
```bash
python3 -c 'import resources.libs.mongo as t; t.remove_user_by_email("teste")'
```



python3 -m robot -d ./logs -i campos-obrigatorios tests/cadastro.robot