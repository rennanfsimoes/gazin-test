# Gazin - Teste técnico
- Configure um cluster Kubernetes em uma plataforma de nuvem (p. ex. Azure, AWS ou GCP) usando o Terraform.
Cloud escolhida: AWS
    - Cloud escolhida: AWS
- Desenvolva um conjunto de manifestos Kubernetes ou use o Helm ou Kustomize para provisionar uma aplicação simples (qualquer api Rest disponível no dockerhub) em um cluster Kubernetes.
- Configure o acesso externo à aplicação usando um LoadBalancer ou ingress.
- Crie uma estratégia de HPA.
- Crie um pipeline de CI/CD (de sua preferência desde que seja como código) que permita que a aplicação seja implantada automaticamente no cluster Kubernetes quando houver uma atualização em um repositório Git.
## _obs._: 
O teste deve ser armazenado em um gerenciador de código remoto de sua preferência, caso necessário a disponibilização de forma privada informar a plataforma para disponibilizarmos um usuário para compartilhamento. 
## _obs. 2_:
Será avaliado a capacidade do cumprimento de cada uma dessas etapas. Certifique-se de fornecer todas as instruções necessárias no README.md

## _Run the following command to retrieve the access credentials for your cluster and configure kubectl._

- $ aws eks --region $(terraform output -raw region) update-kubeconfig --name $(terraform output -raw cluster_name)
