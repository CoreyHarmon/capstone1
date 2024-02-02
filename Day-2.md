## Summary of Steps to create a VM:
1. az network vnet create -g vm-resource-group -n vm-vnet --subnet-name subnet1 --subnet-prefix 10.0.0.0/24
2. az network public-ip create -g vm-resource-group -n vm-public-ip1
3. az network nic create -g vm-resource-group --vnet-name vm-vnet --subnet subnet1 -n test-nic1 --public-ip-address vm-public-ip1
4. az vm create -g vm-resource-group -n test-vm1 -l centralus --nics test-nic1 --image Ubuntu2204 --public-ip-sku Standard --admin-username azureuser --admin-password testpassword123!