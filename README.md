# BÀI TẬP KTPM TUẦN 1
## LÍ THUYẾT
1. Docker là gì?

   Docker là một nền tảng mã nguồn mở giúp đóng gói, triển khai và vận hành ứng dụng một cách dễ dàng hơn. Docker sử dụng container, một dạng ảo hóa nhẹ, để cô lập ứng dụng và môi trường của nó khỏi hệ thống máy chủ.

2. Docker-compose là gì?

   Docker Compose là một công cụ hỗ trợ xác định và chạy các ứng dụng multi-container. Docker Compose có thể xử lý đồng thời multi-container trong sản xuất, staging, phát triển, thử nghiệm và CI. Docker Compose hoạt động bằng cách áp dụng các quy tắc được xác định trong tệp docker-compose.
   yaml.
   Các thành phần chính:
   - Docker Engine : là thành phần chính của Docker, đây có thể được xem là một “công xưởng” để hỗ trợ đóng gói và vận hành các ứng dụng thông qua - các container.
   - Docker Images: Gói tin chứa tất cả các thành phần cần thiết để chạy application, bao gồm code, lib, os v.v.
   - Docker Containers: Image khi run lên sẽ là container, chúng ta có thể có nhiều container chạy cùng lúc từ một image.
   - Docker Hub: Kho lưu trữ trung tâm (Repository) để chia sẻ và truy cập các images.
   - Docker Client: Là nơi chúng ta có thể giao tiếp với Docker thông qua Docker CLI.
   - Docker Daemon: là một service chạy ngầm, tiếp nhận tất cả request từ Docker Client để quản lý các đối tượng như Container, Image, Network và - - Volumes. Các Docker Daemon cũng giao tiếp với nhau để quản lý các Docker Service.
   - Dockerfile: là một file bao gồm các chỉ dẫn để build một image.
   - Volumes: là cơ chế lưu trữ dữ liệu khi các container vận hành.
  
3. VNC là gì?

   VNC, viết tắt của "Virtual Network Computing", là một hệ thống được sử dụng để chia sẻ màn hình giữa các thiết bị khác nhau với mục đích điều khiển từ xa. Điều này cho phép người dùng từ xa có thể xem và điều khiển màn hình, bàn phím và chuột của một máy tính khác như thể họ đang ngồi trước máy tính đó.
   VNC hoạt động dựa trên mô hình client/server. Máy tính cần được cài đặt thành một máy chủ VNC, trong khi máy tính khác muốn điều khiển từ xa cần cài đặt một trình xem VNC, hoặc còn gọi là client. Khi hai thành phần này được kết nối, máy chủ VNC sẽ chuyển gửi hình ảnh màn hình từ xa đến trình xem VNC.

    #### VNC hoạt động như thế nào?
    VNC Server hoạt động theo mô hình Client/Server và sử dụng giao thức VNC (Virtual Network Computing) để chia sẻ màn hình máy tính từ xa. Khi một client (người dùng từ xa) kết nối tới VNC Server, quá trình chia sẻ màn hình bắt đầu.

    - Bước 1: VNC Server ghi nhận dữ liệu framebuffer, là các thông tin về hình ảnh hiển thị trên màn hình máy tính. Dữ liệu này được chuyển đổi thành các gói tin và gửi từ VNC Server tới VNC Client thông qua kết nối mạng.
    - Bước 2: Khi nhận được các gói tin từ VNC Server, VNC Client tạo ra một bản  sao tái hiện của màn hình máy tính nguồn trên màn hình của mình. Điều này cho phép người dùng từ xa xem và tương tác với màn hình máy tính nguồn.
    Kết quả là, mọi hành động và tương tác từ người dùng trên VNC Client sẽ được chuyển tiếp tới VNC Server thông qua kết nối mạng và VNC Server sẽ thực hiện các thao tác tương ứng trên máy tính nguồn. Điều này cho phép người dùng từ xa điều khiển và làm việc trên máy tính một cách dễ dàng và hiệu quả từ một nơi khác.
4. Alpine vs Ubuntu 
   
   Alpine Linux và Ubuntu là hai bản phân phối Linux phổ biến với những đặc điểm và mục đích sử dụng khác nhau.

    ### Một số đặc điểm của AIpline

    Alpine Linux nổi tiếng với kích thước nhỏ và hướng tiếp cận tối giản, Alpine Linux sử dụng trình quản lý gói riêng của nó được gọi là apk, Alpine Linux tập trung mạnh vào bảo mật và cung cấp một số tính năng tích hợp để củng cố hệ thống, Alpine Linux có một cộng đồng nhỏ hơn nhưng đang phát triển, nổi tiếng với sự tập trung vào tính tối giản và hiệu quả.

    ### Một số đặc điểm của Ubuntu

    Ubuntu là một bản phân phối phong phú hơn với dung lượng lớn, cung cấp một loạt gói và công cụ sẵn có, Ubuntu sử dụng Advanced Package Tool (APT) làm hệ thống quản lý gói, cung cấp một kho lưu trữ lớn của các gói được biên dịch trước, Ubuntu cũng chú trọng đến bảo mật và cung cấp các bản cập nhật và vá bảo mật đều đặn, nhưng có một lựa chọn gói rộng hơn, điều này có thể tạo ra bề mặt tấn công lớn hơn nếu không được quản lý một cách đúng đắn, Ubuntu có một cộng đồng lớn và tích cực, với tài liệu phong phú và hỗ trợ từ cộng đồng. 

    ## THỰC HÀNH

    - Dockerfile này chứa os base ubuntu ở version mới nhất, tiến hành cập nhật repo apt và cài package openssh-server, đồng thời config SSH lại sao cho có thể đăng nhập được bằng tài khoản root mà không cần SSH-key. Tạo tài khoản thachdinh và gán mật khẩu: 010203.
    - File yaml dưới đây mô tả đang sử dụng docker-compose version 3, định nghĩa service remote_ubuntu dùng image mà ta vừa tạo là ubuntu_ssh, NAT port với host là 22. tdin_open: true và --tty cho phép tương tác với container thông qua terminal.
5. Unix, Linux, BSD, *nix
   ## Unix:
   Là hệ điều hành được phát triển bởi Ken Thompson, Dennis Ritchie và đồng nghiệp vào những năm 1970.
   Thông thường, Unix được sử dụng trong enterprise-level servers, các công ty lớn vì hiệu năng cao và thiết kế hướng đa nhiệm (multi-tasking-oriented design). Ngoài ra, Unix có thể hỗ trợ đa người dùng trên cùng một máy, không kể đó là kết nối từ xa hay kết nối trực tiếp.
   Cả Internet là WWW (World Wide Web) đều được xây dựng dựa trên Unix.
   ## Linux:
   Là nhân hệ điều hành. Một số hệ điều hành mã nguồn mở được xây dựng dựa trên nhân Linux: Ubuntu, Debian, Red Hat,.... Linux có cấu trúc tương đồng với Unix (Unix-like), được xây dựng trên nhân Linux.
   Khác với Unix, Linux thường được sử dụng trên máy cá nhân.
   Linux thường được sử dụng trong: server applications, software development, cloud computing, game development.
   ## BSD (Berkeley Software Distribution)
   Là một discontinued, Unix-like OS, với nhân riêng và tệp người dùng riêng biệt. Được phát triển dựa trên Research Unix.
   BSD bao gồm các phiên bản: FreeBSD, OpenBSD, NetBSD, DragonFly BSD.
   ## *nix: là thuật ngữ viết tắt chỉ những Unix-like OS.