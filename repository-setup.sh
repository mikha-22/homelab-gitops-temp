#!/bin/bash
# Run this in homelab-gitops-temp/

echo "🏗️ Creating minimal GitOps structure for ArgoCD + Ingress..."

# Create directories
mkdir -p applications
mkdir -p manifests/argocd

# Create .gitignore
cat > .gitignore << 'EOF'
# Temporary files
*.tmp
*.bak
.DS_Store

# Editor files
.vscode/
.idea/

# Helm generated files
charts/
Chart.lock
EOF

echo "📁 Repository structure:"
tree . 2>/dev/null || find . -type d

echo ""
echo "✅ Ready for Step 1 files!"
echo ""
echo "Next steps:"
echo "1. Add the 3 YAML files"
echo "2. Update repo URL in app-of-apps.yaml"
echo "3. Git init, commit, push"
echo "4. Bootstrap ArgoCD manually"
echo "5. Apply app-of-apps"
