# DevOps Lab 1 — My Portfolio CI/CD Pipeline

> **Bài thực hành 1: Trải nghiệm DevOps Workflow End-to-End**  
> **Học phần:** Vận hành và Bảo trì Phần mềm (DevOps)  
> **Giảng viên hướng dẫn:** TS. Phạm Thị Thương  

---

## 👤 Thông tin sinh viên
- **Họ và tên:** Nguyễn Mạnh Hùng
- **Mã số sinh viên:** DTC235200335
- **Chuyên ngành:** Kỹ thuật Phần mềm (Software Engineering)
- **Đơn vị:** Trường Đại học Công nghệ Thông tin và Truyền thông Thái Nguyên (ICTU)
- **Email:** dtc235200335@ictu.edu.vn / Manhhungnguyen311@gmail.com
- **GitHub:** [@nmhung311](https://github.com/nmhung311)
- **Live Website:** [https://nmhung311.github.io/devops-lab1-portfolio/](https://nmhung311.github.io/devops-lab1-portfolio/)

---

## 🎯 Mục tiêu bài Lab
1. Trải nghiệm trọn vẹn **Vòng đời DevOps End-to-End**: `Plan → Code → Build → Test → Deploy → Monitor`.
2. Thiết lập hệ thống tự động hóa **CI/CD Pipeline** với GitHub Actions hoàn toàn miễn phí.
3. Tự động hóa phát hành website tĩnh lên dịch vụ cloud hosting **GitHub Pages**.
4. So sánh và làm rõ sự khác biệt giữa phương thức vận hành **Thủ công (Traditional)** và **DevOps tự động hóa**.

---

## 🏗️ Cấu trúc thư mục dự án
```
devops-lab1-portfolio/
├── .github/
│   └── workflows/
│       └── deploy.yml          # Kịch bản GitHub Actions CI/CD Pipeline
├── index.html                  # Trang chủ Portfolio cá nhân
├── about.html                  # Trang giới thiệu chi tiết (Mở rộng Multi-page)
├── contact.html                # Trang liên hệ (Mở rộng Multi-page)
├── avatar.png                  # Ảnh đại diện cá nhân
├── README.md                   # Tài liệu hướng dẫn dự án
├── verify.sh                   # Script kiểm tra môi trường và tính hợp lệ
└── push_to_github.sh           # Script đẩy nhanh lên GitHub
```

---

## ⚙️ Quy trình CI/CD Pipeline
Pipeline hoạt động theo cơ chế **Event-Driven**:
1. **Trigger:** Mỗi khi lập trình viên thực hiện `git push` lên nhánh `main` (hoặc nhấn nút Run workflow thủ công).
2. **Virtual Runner:** GitHub khởi tạo một máy ảo Ubuntu sạch (`ubuntu-latest`).
3. **Checkout Step:** Tải toàn bộ mã nguồn của dự án về runner.
4. **Validation Step:** Chạy script kiểm tra cú pháp, sự tồn tại và tính hợp lệ của các file HTML.
5. **Deployment Step:** Action `peaceiris/actions-gh-pages@v4` tự động build và commit mã nguồn sang nhánh `gh-pages`.
6. **Live Production:** GitHub Pages phát hành website lên internet tại địa chỉ:  
   👉 `https://nmhung311.github.io/devops-lab1-portfolio/`

---

## 🚀 Hướng dẫn chạy và kiểm thử Local
1. Mở trực tiếp file `index.html` bằng trình duyệt web:
   ```bash
   # Trên macOS
   open index.html
   ```
2. Chạy script kiểm tra chất lượng:
   ```bash
   bash verify.sh
   ```
