# Using Packer to Automate AMI Creation in AWS
Code for the Packer build

AMI_ID=$(jq -r '.builds[-1].artifact_id' manifest.json | cut -d ":" -f2)
echo $AMI_ID
