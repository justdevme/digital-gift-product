# Đắm Say

Landing page tĩnh của Đắm Say: quà tặng số, AI giúp bạn gợi mở những điều muốn nói.

## Cấu trúc

- `index.html`: toàn bộ landing page (HTML và CSS, không cần build).
- `assets/`: logo chữ, ảnh món quà, video kỷ niệm (`memory.webm` và `memory.mp4`), favicon.
- `.github/workflows/deploy.yml`: tự deploy lên GitHub Pages mỗi khi push.

## Xem thử trên máy

```
python3 -m http.server 8000
```

Mở http://localhost:8000.

## Deploy

Lần đầu: vào **Settings → Pages**, chọn **Source: GitHub Actions**. Sau đó mỗi lần push lên `main` (hoặc nhánh `claude/**`) workflow sẽ chạy và đăng trang. Địa chỉ trang hiện ở bước *deploy* của workflow.

## Việc còn lại

- Các nút "Bắt đầu tạo" hiện trỏ về `#`, chưa có trang tạo quà.
- Video trong khung polaroid là bản mẫu, cần thay bằng video có bản quyền sử dụng trước khi chạy thật.
