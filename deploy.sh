cat <<'EOF' > deploy.sh
#!/bin/bash
#
## --- Variáveis de Projeto ---
#PROJETO="lab-alexandre"
#DATA=$(date +%s)
#BUCKET_NOME="$PROJETO-bucket-$DATA"
#
#echo "🛠️  Iniciando provisionamento na AWS..."
#
## 1. Criar o Bucket S3
#aws s3 mb s3://$BUCKET_NOME
#echo "✅ S3 Criado: $BUCKET_NOME"
#
## 2. Criar a VPC
#VPC_ID=$(aws ec2 create-vpc --cidr-block 10.0.0.0/16 --query 'Vpc.VpcId' --output text)
#aws ec2 create-tags --resources $VPC_ID --tags Key=Name,Value="$PROJETO-vpc"
#echo "✅ VPC Criada: $VPC_ID"
#
## 3. Criar a Subnet
#SUB_ID=$(aws ec2 create-subnet --vpc-id $VPC_ID --cidr-block 10.0.1.0/24 --query 'Subnet.SubnetId' --output text)
#aws ec2 create-tags --resources $SUB_ID --tags Key=Name,Value="$PROJETO-subnet"
#echo "✅ Subnet Criada: $SUB_ID"
#
#echo "------------------------------------------------"
#echo "🚀 Infraestrutura AWS pronta!"
#echo "🐳 Agora subindo o container Docker..."
#docker compose up -d --build
#EOF
