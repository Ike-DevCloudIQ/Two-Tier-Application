#!/bin/bash

echo "=== Route53 Setup for cloudautomation.site ==="
echo ""

# First, let's create the hosted zone if it doesn't exist
echo "Creating Route53 hosted zone..."
HOSTED_ZONE_ID=$(aws route53 create-hosted-zone --name cloudautomation.site --caller-reference $(date +%s) --query 'HostedZone.Id' --output text 2>/dev/null || aws route53 list-hosted-zones-by-name --dns-name cloudautomation.site --query "HostedZones[0].Id" --output text)

if [[ "$HOSTED_ZONE_ID" == *"/hostedzone/"* ]]; then
    echo "✅ Hosted zone created/found: $HOSTED_ZONE_ID"
    
    echo ""
    echo "🎯 NAMESERVERS FOR GODADDY CONFIGURATION:"
    echo "========================================"
    aws route53 get-hosted-zone --id $HOSTED_ZONE_ID --query 'DelegationSet.NameServers' --output table
    
    echo ""
    echo "📋 NEXT STEPS:"
    echo "1. Copy the 4 nameservers above"
    echo "2. Log into your GoDaddy account"
    echo "3. Go to DNS Management for cloudautomation.site"
    echo "4. Replace the default nameservers with the AWS ones"
    echo "5. Save changes (DNS propagation takes 24-48 hours)"
    echo ""
    echo "✅ Once nameservers are updated, run: terraform apply -var-file=\"variables.tfvars\""
else
    echo "❌ Error creating/finding hosted zone"
fi