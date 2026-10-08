#!/bin/bash
# ============================================================
# push_to_github.sh — Script tự động đẩy code lên GitHub
# Sinh viên: Nguyễn Mạnh Hùng - MSSV: DTC235200335
# ============================================================
set -e

echo "=================================================="
echo "  🚀 PUSH CODE LÊN GITHUB REPOSITORY"
echo "  Repo: git@github.com:nmhung311/devops-lab1-portfolio.git"
echo "=================================================="

# Kiểm tra git remote
if ! git remote get-url origin &>/dev/null; then
    git remote add origin git@github.com:nmhung311/devops-lab1-portfolio.git
fi

# Chuyển nhánh main
git branch -M main

# Add và commit nếu có thay đổi
git add -A
if git diff --staged --quiet; then
    echo "ℹ️  Không có thay đổi mới để commit."
else
    git commit -m "feat: complete DevOps Lab 1 portfolio with CI/CD pipeline"
fi

echo "🚀 Đang đẩy code lên GitHub..."
git push -u origin main

echo ""
echo "=================================================="
echo "✅ ĐÃ PUSH THÀNH CÔNG!"
echo "👉 Truy cập tab Actions để quan sát pipeline:"
echo "   https://github.com/nmhung311/devops-lab1-portfolio/actions"
echo "👉 Truy cập website trực tuyến:"
echo "   https://nmhung311.github.io/devops-lab1-portfolio/"
echo "=================================================="
