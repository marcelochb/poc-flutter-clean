# Clean Arch Pattern para Flutter

### Tecnologias usadas

- Flutter
- GetX
- Equatable
- Either
- Dio

### Estrutura do projeto
- src =>
    - comoponents => Atomic design
    - core => Configurações globais.
        - errors =>
        - api => clientes api
    - modules =>
        - loan
            - domain 
                - entities
                - repositories => interfaces
                - usecases => interfaces and implementatiions
            - external
                - datasources
            - infra
                - datasources => interfaces
                - models
                - repositories => implementation
            - presenter
                - common
                    - binds
                - list
                    - controllers
                    - pages
        - routes
