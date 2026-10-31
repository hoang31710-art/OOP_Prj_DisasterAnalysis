# Disaster Social Media Analysis Platform
*(Ứng dụng dữ liệu mạng xã hội để nâng cao hiệu quả trong logistics nhân đạo)*

<p align="center">
  <b>Đại học Bách khoa Hà Nội (HUST) – Trường CNTT & TT</b><br>
  <b>Học phần:</b> Lập trình Hướng đối tượng (IT3103)<br>
  <b>Giảng viên hướng dẫn:</b> TS. Trịnh Tuấn Đạt
</p>

---

## 📖 1. Giới thiệu chung

**Disaster Social Media Analysis** là ứng dụng Java Desktop được phát triển bởi **Nhóm 2** nhằm giải quyết bài toán tối ưu hóa hoạt động logistics trong cứu trợ thiên nhiên. Hệ thống tự động hóa toàn bộ luồng dữ liệu (Data Pipeline) từ khâu thu thập bài đăng/bình luận trên mạng xã hội (YouTube, báo điện tử), làm sạch, phân tích cảm xúc, phân loại thiệt hại đến việc tích hợp Trí tuệ nhân tạo (AI) để tạo báo cáo chuyên sâu, giúp các tổ chức cứu trợ đưa ra quyết định phân bổ nguồn lực chính xác và kịp thời.

---

## ✨ 2. Tính năng nổi bật

* **🌐 Thu thập dữ liệu đa nền tảng:** Tự động cào dữ liệu từ YouTube (qua YouTube Data API v3) và các trang báo lớn (qua Jsoup Web Scraping) theo từ khóa và khung thời gian.
* **🧹 Tiền xử lý thông minh:** Làm sạch văn bản, loại bỏ ký tự đặc biệt và lọc trùng lặp dữ liệu trước khi phân tích.
* **📈 Phân tích cảm xúc công chúng:** Theo dõi biến động cảm xúc (Tích cực, Tiêu cực, Trung lập) theo các mốc thời gian (Theo giờ, Ngày, Tuần, Tháng) qua biểu đồ trực quan.
* **🔍 Phân loại thiệt hại tự động:** Thống kê chi tiết các danh mục: *Thiệt hại nhà cửa, Cơ sở hạ tầng, Con người bị ảnh hưởng, Mất tài sản cá nhân, Gián đoạn kinh tế,...*
* **🤖 Trợ lý AI (AI Insights):** Tích hợp Google Gemini / OpenAI để tổng hợp báo cáo chuyên sâu và đề xuất giải pháp cứu trợ.
* **📊 Xuất báo cáo Excel:** Hỗ trợ xuất toàn bộ kết quả phân tích ra file `.xlsx` chuyên nghiệp bằng Apache POI.

---

## 🛠️ 3. Công nghệ & Kiến trúc sử dụng

* **Ngôn ngữ:** Java 21
* **Giao diện:** JavaFX, FXML, CSS
* **Cơ sở dữ liệu:** Microsoft SQL Server, HikariCP (Connection Pooling)
* **Xử lý NLP & AI:** Stanford CoreNLP, Google Gemini API / OpenAI API
* **Thư viện hỗ trợ:** Apache POI, Jackson, Dotenv-java, Jsoup

### 🏗️ Kiến trúc phần mềm:
Dự án áp dụng mô hình **Clean Architecture** kết hợp **Hexagonal Architecture (Ports and Adapters)**, giúp tách bạch rõ ràng giữa tầng nghiệp vụ cốt lõi (`domain`), tầng điều phối (`application`), tầng hạ tầng kỹ thuật (`infrastructure`) và giao diện (`ui`).

---

## 🚀 4. Hướng dẫn cài đặt nhanh

1. **Cấu hình môi trường (`.env`):** Tạo file `.env` tại thư mục gốc với nội dung:
   ```env
   ACTIVE_AI=GEMINI
   GEMINI_API_KEY=your_api_key_here
   YOUTUBE_API_KEY=your_api_key_here
   DB_URL=jdbc:sqlserver://localhost:1433;encrypt=true;trustServerCertificate=true
   DB_NAME=DisasterAnalysisDB
   DB_USERNAME=sa
   DB_PASSWORD=your_password
   ```
2. **Build & Chạy:** 
   * Đồng bộ Maven dependencies (`mvn clean install`).
   * Chạy hàm `main` tại `src/main/java/com/disaster/analysis/Main.java`.

---

## 👥 5. Thông tin thành viên nhóm

| Họ và Tên | MSSV | Vai trò & Nhiệm vụ chính |
| :--- | :---: | :--- |
| **Nguyễn Vũ Anh** | 202416856 | Phát triển Backend (CSDL, AI), Viết báo cáo, Sơ đồ UML |
| **Phan Đức Hiếu** | 202416913 | Thiết kế kiến trúc, Phát triển UI, Thuyết trình |
| **Đinh Việt Hoàng** *(Trưởng nhóm)* | 202416917 | Thiết kế UI/UX, Phát triển JavaFX, Quay video demo |