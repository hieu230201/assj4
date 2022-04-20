<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="./assets/img/logo_youtube-title.png" type="image/x-icon">
    <title>YouTube</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css" integrity="sha512-NhSC1YmyruXifcj/KFRWoC561YpHpc5Jtzgvbuzx5VozKpWvQ+4nXhPdFgmx8xqexRcpAglTj9sIBWINXa8x5w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700;900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" integrity="sha512-1ycn6IcaQQ40/MKBW2W4Rhis/DbILU74C1vSrLJxCq57o941Ym01SwNsOMqvEBFlcgUa6xLiPY/NS5R+E6ztJQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="teamplates/indexTeamplates/assets/font-icon/themify-icons-font (1)/themify-icons/themify-icons.css">
    <link rel="stylesheet" href="teamplates/indexTeamplates/assets/icon-Boxicons/boxicons-2.0.9/boxicons-2.0.9/css/boxicons.min.css">
    <link rel="stylesheet" href="teamplates/indexTeamplates/assets/css/base.css">
    <link rel="stylesheet" href="teamplates/indexTeamplates/assets/css/Bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="teamplates/indexTeamplates/assets/css/Bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="teamplates/indexTeamplates/assets/css/Bootstrap/css/bootstrap-grid.css">
    <link rel="stylesheet" href="teamplates/indexTeamplates/assets/css/header.css">
    <link rel="stylesheet" href="teamplates/indexTeamplates/assets/css/container.css">
    <link rel="stylesheet" href="teamplates/indexTeamplates/assets/css/responsive.css">
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
   
</head>
<body>
    <div class="main">
        <div class="header">
            <div class="slider_bar bar-active hide-on-tm ">
                <div class="slider_bar-content">
                   <div class="slider_bar-list-first">
                        <ul class="slider_bar-list">
                            <li class="slider_bar-item active">
                                <i class="bx bxs-home bxf-home"></i>
                                <a href="index" style=" text-decoration: none"  class="slider_bar-description">Trang chủ</a>
                            </li>
    
                            <li class="slider_bar-item">
                                <i class="bx bxs-compass bxf-compass"></i>
                                <p class="slider_bar-description">Khám phá</p>
                            </li>
    
                            <li class="slider_bar-item">
                                <i class="bx bxl-youtube bxf-youtube "></i>
                                <p class="slider_bar-description">Kênh đăng kí</p>
                            </li>
    
                        </ul>
                   </div>
    
                    <div class="slider_bar-list-second">
                        <ul class="slider_bar-list">
                            <li class="slider_bar-item">
                                <i class="bx  bxs-videos"></i>
                                <p class="slider_bar-description">Thư viện</p>
                            </li>
        
                            <li class="slider_bar-item">
                                <i class="bx bx-history"></i>
                               <a href="history" style=" text-decoration: none"  class="slider_bar-description">Video đã xem</a> 
                            </li>
        
                            <li class="slider_bar-item">
                                <i class="bx bx-caret-right-square"></i>
                                <p class="slider_bar-description">Video của bạn</p>
                            </li>
    
                            <li class="slider_bar-item">
		                       <i class="bx bxs-cog user-btn-fix"></i>
		                          <button type="button" style="border: none" class="slider_bar-description"   data-toggle="modal" data-target="#changePassModal">Đổi Mật Khẩu</button>         
		                    </li>
    
                            <li class="slider_bar-item">
                                <i class="bx bxs-like"></i>
                               <a href="favorites" style=" text-decoration: none"  class="slider_bar-description">Video thích</a> 
                            </li>
        
                        </ul>
                    </div>
    
                    <div class="slider_bar-list-third">
                        <h4 class="slider_bar-list-title">Kênh đăng ký</h4>
                        <ul class="slider_bar-list slider_bar-list-pd">
                            <li id="item-js" class="slider_bar-item">
                                <i class="bx bx-chevron-down"></i>
                                <p class="slider_bar-description btn_click-htt">Hiển thị thêm</p>
                            </li>
        
                        </ul>
                    </div>
    
                    <div class="slider_bar-list-fourth">
                        <h4 style= "max-width: 180px;" class="slider_bar-list-title">Dịch vụ khác của youtube</h4>
                        <ul class="slider_bar-list slider_bar-list-pd">
                            <li class="slider_bar-item">
                                <i class="bx  bx-code-alt"></i>
                                <p class="slider_bar-description">Lập trình</p>
                            </li>
        
                            <li class="slider_bar-item">
                                <i class="bx bx-station bxf-station bxf-ml-station"></i>
                                <p class="slider_bar-description">Sự kiện trực tiếp</p>
                            </li>
        
                            <li class="slider_bar-item">
                                <i class="bx bxs-medal"></i>
                                <p class="slider_bar-description">Thể thao</p>
                            </li>
                        </ul>
                    </div>
    
                    <div class="slider_bar-list-fifth">
                        <ul class="slider_bar-list">
                            <li class="slider_bar-item">
                                <i class="bx  bxs-cog"></i>
                                <p class="slider_bar-description">Cài đặt</p>
                            </li>
        
                            <li class="slider_bar-item">
                                <i class="bx bxs-flag"></i>
                                <p class="slider_bar-description">Lịch sử báo cáo</p>
                            </li>
        
                            <li class="slider_bar-item">
                                <i class="bx bxs-help-circle"></i>
                                <p class="slider_bar-description">Trợ giúp</p>
                            </li>
    
                            <li class="slider_bar-item">
                                <i class="bx bxs-message-error"></i>
                                <p class="slider_bar-description">Gửi phản hồi</p>
                            </li>
        
                        </ul>
                    </div>
    
                    <div class="slider_bar-list-sixth">
                        <li class="slider_bar-item-info">
                            <a href="">Giới thiệu</a>
                            <a href="">Báo chí</a>
                            <a href="">Bản quyền</a>
                            <a href="">Liên hệ với chúng tôi</a>
                            <a href="">Người sáng tạo</a>
                            <a href="">Quảng cáo</a>
                            <a href="">Nhà phát triển</a>
                        </li>
                           
                        <div style="margin-top: 12px;" class="spacee"></div>
                         
                        <li class="slider_bar-item-info">
                            <a href="">Điều khoản</a>
                            <a href="">Quyền riêng tư</a>
                            <a href="">Chính sách và an toàn</a>
                            <a href="">Cách Youtube hoạt động</a>
                            <a href="">Thử các tính năng mới</a>
                        </li>
    
                        <span class="info-bar-copyright">
                            <i class="bx bx-copyright bxf-copyright"></i>
                            <p>2021 - Long</p>
                        </span>
                    </div>
                </div>
            </div>
           
                <ul class="header_list-left">
                    <li class="list_left-item nav-bar-click hide-on-tm">
                        <i class="header_list-icon ti-menu"></i>
                        <span class="btn-click hide-on-tm "></span>
                    </li>
    
                    <li class="list_left-item">
                        <a href="">
                            <img src="teamplates/indexTeamplates/assets/img/logo.png" alt="Youtube VN" class="header_logo">
                        </a>
                    </li>
                </ul>
    
                <ul class="header_list-center hide-on-m">
                    <li class="list_center-item">
                        <input type="text" name="" id="" class="input-search" placeholder="Tìm kiếm">
                    </li>
    
                    <li class="list_center-item list_center-item-keyboard">
                       <div class="btn-search">
                           <i class="btn_search-icon ti-search"></i>
                       </div>
                       <div class="btn-keyboard">
                           <img src="teamplates/indexTeamplates/assets/img/keyboard.gif" alt="keyboard" class="icon-keyboard">
                       </div>
                    </li>
    
                    <li class="list_center-item">
                        <div class="header_microphone item-mic">
                            <i class="bx bxs-microphone"></i>
                            <span class="btn-click-2"></span>
                        </div>
                        <!-- Modal microphone -->
                        <div class="modal_mic">
                            <div class="overlay-mic">
                            </div>
    
                            <div class="modal_mic-content">
                                <div class="mic_close">
                                    <i class="bx bx-x btn-x"></i>
                                </div>
                                <h3 class="mic_title">Tôi chưa nghe rõ.Mời bạn nói lại</h3>
                                <div class="mic_box">
                                    <i class="bx bxs-microphone btn-mic"></i>
                                </div>
                                <p class="mic_description">Nhấp vào micrô để thử lại</p>         
                            </div>  
                        </div>
                       
                    </li>
                </ul>
    
                <ul class="header_list-right">
                    <li class="list_right-item item-videos">
                       <i class="icon-videos bx bxs-video-plus"></i>
                       <span class="btn-click-3"></span>
                       <ul class="videos_list-down">
                        <li class="videos_item">
                            <svg class="icon-special" id="Layer_1" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 18"><defs><style>.cls-1{fill:red;}</style></defs><path d="M20,3H4A2,2,0,0,0,2,5V19a2,2,0,0,0,2,2H20a2,2,0,0,0,2-2V5A2,2,0,0,0,20,3Zm0,6h-.46L16.87,5H20ZM9.54,9,6.87,5h2.6l2.66,4Zm5,0L11.87,5h2.6l2.66,4ZM4,5h.47L7.13,9H4ZM4,19V11H20v8Z" transform="translate(-2 -3)"/><path class="cls-1" d="M10,18l5.5-3L10,12Z" transform="translate(-2 -3)"/></svg>
                            <p class="videos_description">Tải video lên</p>
                        </li>
 
                        <li class="videos_item">
                            <svg class="icon-special" id="Layer_1" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 14.14"><defs><style>.cls-1{fill:red;}</style></defs><circle class="cls-1" cx="10" cy="7.07" r="2"/><path d="M7.76,16.24l1.41-1.41a4,4,0,0,1,0-5.66L7.76,7.76a6,6,0,0,0,0,8.48Zm8.48,0a6,6,0,0,0,0-8.48L14.83,9.17a4,4,0,0,1,0,5.66Z" transform="translate(-2 -4.93)"/><path d="M6.34,17.66a8,8,0,0,1,0-11.32L4.93,4.93a10,10,0,0,0,0,14.14ZM17.66,6.34a8,8,0,0,1,0,11.32l1.41,1.41a10,10,0,0,0,0-14.14Z" transform="translate(-2 -4.93)"/></svg>
                           <p class="videos_description">Phát trực tiếp</p>
                      </li>
                    </ul>
                    </li>
    
                    <li class="list_right-item item-grid hide-on-tm">
                        <i class="bx bxs-grid icon-grid"></i>
                        <span class="btn-click-4"></span>
                        <div class="grid_down">
                            <ul class="grid_list-down">
                                <li class="grid_item-down">
                                    <a href="" class="grid_link-down">
                                        <i class="bx bxs-tv"></i>
                                        <p class="grid_description">Youtube TV</p>
                                    </a>
                                </li>
                            </ul>
    
                            <ul class="grid_list-down">
                                <li class="grid_item-down">
                                    <a href="" class="grid_link-down">
                                        <i class="bx bx-play-circle"></i>
                                        <p class="grid_description">Youtube Music</p>
                                    </a>
                                </li>
    
                                <li class="grid_item-down">
                                    <a href="" class="grid_link-down">
                                        <i class="bx bxl-youtube grid-ytb-fix"></i>
                                        <p class="grid_description">Youtube Kids</p>
                                    </a>
                                </li>
                            </ul>
    
                            <ul class="grid_list-down">
                                <li class="grid_item-down">
                                    <a href="" class="grid_link-down">
                                        <i class="bx bxl-youtube grid-ytb-fix"></i>
                                        <p class="grid_description">Học viện sáng tạo</p>
                                    </a>
                                </li>
    
                                <li class="grid_item-down">
                                    <a href="" class="grid_link-down">
                                        <i class="bx bxl-youtube grid-ytb-fix"></i>
                                        <p class="grid_description">Youtube dành cho Nghệ sĩ</p>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </li>
    
                    <li class="list_right-item item-bell">
                        <i class="bx bxs-bell"></i>
                        <span class="btn-click-5"></span>
                        <div class="bell_down">
                            <ul class="bell_down-header">
                                <h4 class="bell_down-title">Thông báo</h4>
                                <i class="bx bxs-cog bxf-cog"></i>
                            </ul>
                            <div class="bell_down-scroll">
                                <ul class="bell_down-content">
                                    <li class="bell_down-item">
                                      <img src="./assets/img/f8-myfavourite.jpg" alt="Chanel avatar" class="bell_down-img-first">
                                    </li>
    
                                    <li class="bell_down-item f-m-bell_content">
                                       <p class="bell_down-description">Lần trở lại này F8 sẽ làm gì cho các bạn? Học Lập trình để đi làm tại F8 nào</p>
                                       <span class="bell_down-sub-description"> 1 giờ trước</span>
                                    </li>
    
                                    <li class="bell_down-item">
                                       <img src="./assets/img/A_Son-f8.png" alt="Avatar Description Channel" class="bell_down-img-second">
                                    </li>
    
                                    <li class="bell_down-item">
                                       <i class="bx bx-dots-vertical-rounded bxf-bx-dots-vertical-rounded"></i>
                                    </li>
    
                                </ul>
    
                                <ul class="bell_down-content">
                                    <li class="bell_down-item">
                                      <img src="./assets/img/Nguoi_noi_tieng.jpg" alt="Chanel avatar" class="bell_down-img-first">
                                    </li>
    
                                    <li class="bell_down-item f-m-bell_content">
                                       <p class="bell_down-description">Bhutan - Quốc Gia "Hạnh Phúc Nhất Thế Gới"</p>
                                       <span class="bell_down-sub-description"> 4 giờ trước</span>
                                    </li>
    
                                    <li class="bell_down-item">
                                       <img src="./assets/img/Bhutan.jpg" alt="Avatar Description Channel" class="bell_down-img-second">
                                    </li>
    
                                    <li class="bell_down-item">
                                       <i class="bx bx-dots-vertical-rounded bxf-bx-dots-vertical-rounded"></i>
                                    </li>
    
                                </ul>
    
                                <ul class="bell_down-content">
                                    <li class="bell_down-item">
                                      <img src="./assets/img/A_le_kha_giap.jpg" alt="Chanel avatar" class="bell_down-img-first">
                                    </li>
    
                                    <li class="bell_down-item f-m-bell_content">
                                       <p class="bell_down-description">Hành Trình Đi Bộ Xuyên Việt (Lê Khả Giáp)</p>
                                       <span class="bell_down-sub-description"> 1 phút trước</span>
                                    </li>
    
                                    <li class="bell_down-item">
                                       <img src="./assets/img/ĐBXV-Lê Khả Giáp.png" alt="Avatar Description Channel" class="bell_down-img-second">
                                    </li>
    
                                    <li class="bell_down-item">
                                       <i class="bx bx-dots-vertical-rounded bxf-bx-dots-vertical-rounded"></i>
                                    </li>
    
                                </ul>
    
                                <ul class="bell_down-content">
                                    <li class="bell_down-item">
                                      <img src="./assets/img/khanh-hung.jpg" alt="Chanel avatar" class="bell_down-img-first">
                                    </li>
    
                                    <li class="bell_down-item f-m-bell_content">
                                       <p class="bell_down-description">Lập trình không khó (khó ở chỗ bạn kiên nhẫn đến đâu)</p>
                                       <span class="bell_down-sub-description"> 1 giờ trước</span>
                                    </li>
    
                                    <li class="bell_down-item">
                                       <img src="./assets/img/No pain No gain.jpg" alt="Avatar Description Channel" class="bell_down-img-second">
                                    </li>
    
                                    <li class="bell_down-item">
                                       <i class="bx bx-dots-vertical-rounded bxf-bx-dots-vertical-rounded"></i>
                                    </li>
    
                                </ul>
    
                                <ul class="bell_down-content">
                                    <li class="bell_down-item">
                                      <img src="./assets/img/le-gia-huy.jpg" alt="Chanel avatar" class="bell_down-img-first">
                                    </li>
    
                                    <li class="bell_down-item f-m-bell_content">
                                       <p class="bell_down-description">Cực kì phấn khích khi đi phượt bằng Motor</p>
                                       <span class="bell_down-sub-description"> 2 phút trước</span>
                                    </li>
    
                                    <li class="bell_down-item">
                                       <img src="./assets/img/A_le_gia_huy.jpg" alt="Avatar Description Channel" class="bell_down-img-second">
                                    </li>
    
                                    <li class="bell_down-item">
                                       <i class="bx bx-dots-vertical-rounded bxf-bx-dots-vertical-rounded"></i>
                                    </li>
    
                                </ul>
    
    
                                <ul class="bell_down-content">
                                    <li class="bell_down-item">
                                      <img src="./assets/img/pham-huy-hoang.jpg" alt="Chanel avatar" class="bell_down-img-first">
                                    </li>
    
                                    <li class="bell_down-item f-m-bell_content">
                                       <p class="bell_down-description">Tự học lập trình (Web development)</p>
                                       <span class="bell_down-sub-description"> 1 giờ trước</span>
                                    </li>
    
                                    <li class="bell_down-item">
                                       <img src="./assets/img/tự_học_lập_trình.jpg" alt="Avatar Description Channel" class="bell_down-img-second">
                                    </li>
    
                                    <li class="bell_down-item">
                                       <i class="bx bx-dots-vertical-rounded bxf-bx-dots-vertical-rounded"></i>
                                    </li>
    
                                </ul>
    
                                <ul class="bell_down-content">
                                    <li class="bell_down-item">
                                      <img src="./assets/img/laptrinhvienTV.jpg" alt="Chanel avatar" class="bell_down-img-first">
                                    </li>
    
                                    <li class="bell_down-item f-m-bell_content">
                                       <p class="bell_down-description">Lập trình viên (Một ngày làm việc của lập trình viên Front-End)</p>
                                       <span class="bell_down-sub-description"> 1 giờ trước</span>
                                    </li>
    
                                    <li class="bell_down-item">
                                       <img src="./assets/img/lap_trinh_vien.jpg" alt="Avatar Description Channel" class="bell_down-img-second">
                                    </li>
    
                                    <li class="bell_down-item">
                                       <i class="bx bx-dots-vertical-rounded bxf-bx-dots-vertical-rounded"></i>
                                    </li>
    
                                </ul>                       
    
                                <ul class="bell_down-content">
                                    <li class="bell_down-item">
                                      <img src="./assets/img/freecodecamp.jpg" alt="Chanel avatar" class="bell_down-img-first">
                                    </li>
    
                                    <li class="bell_down-item f-m-bell_content">
                                       <p class="bell_down-description">Tài liệu lập trình (Kiến thức là miễn phí)</p>
                                       <span class="bell_down-sub-description"> 2 giờ trước</span>
                                    </li>
    
                                    <li class="bell_down-item">
                                       <img src="./assets/img/know_is_free.png" alt="Avatar Description Channel" class="bell_down-img-second">
                                    </li>
    
                                    <li class="bell_down-item">
                                       <i class="bx bx-dots-vertical-rounded bxf-bx-dots-vertical-rounded"></i>
                                    </li>
    
                                </ul>
    
                                <ul class="bell_down-content">
                                    <li class="bell_down-item">
                                      <img src="./assets/img/f8-myfavourite.jpg" alt="Chanel avatar" class="bell_down-img-first">
                                    </li>
    
                                    <li class="bell_down-item f-m-bell_content">
                                       <p class="bell_down-description">Và lời kết (Hãy cố gắng lên code từng ngày từng ngày, và bạn sẽ thay đổi)</p>
                                       <span class="bell_down-sub-description"> 1 giờ trước</span>
                                    </li>
    
                                    <li class="bell_down-item">
                                       <img src="./assets/img/A_Son_Practice.png" alt="Avatar Description Channel" class="bell_down-img-second">
                                    </li>
    
                                    <li class="bell_down-item">
                                       <i class="bx bx-dots-vertical-rounded bxf-bx-dots-vertical-rounded"></i>
                                    </li>
    
                                </ul>
                            </div>
                        </div>
                    </li>
                   
                    <c:choose>
                    	<c:when test="${not empty sessionScope.currentUser}">
                    		<li class="list_right-item item-user">
                        		<img src="teamplates/indexTeamplates/assets/img/trunghieu.jpg" alt="User-login" class="user-avatar">
                        		<div class="border_user-avatar"></div>
		                        <div class="user_down">
		                            <ul class="user_down-header">
		                                <li class="user_down-item-header">
		                                   <img src="teamplates/indexTeamplates/assets/img/trunghieu.jpg" alt="Channel Avatar" class="user_down-img">
		                                   <div class="user_down-profile">
		                                       <p class="user_profile-title">${sessionScope.currentUser.fullname }</p>
		                                   </div>
		                                </li>
		                            </ul>
		    
		                            <ul class="user_down-content-first">
		                               <li class="user_down-content-item">
		                                   <i class="bx bxs-user-rectangle bxf-user-rectangle"></i>                          
		                                   <a href="favorites" class="user_icon-description" style="color: black; text-decoration: none" >Video Ưa Thích</a>
		                                   
		                                </li>
		
		                               <li class="user_down-content-item">
		                                   <i class="bx bxl-youtube  bxf-youtube-2"></i>
		                                    <a href="history" class="user_icon-description" style="color: black; text-decoration: none" >Lịch Sử</a>
		                                </li>
		                                <li class="user_down-content-item">
		                                    <i class="bx bx-log-in"></i>
		                                    <a href="logout" class="user_icon-description" style="color: black; text-decoration: none" >Đăng Xuất</a>
		                                 </li>
		                            </ul>
		    
		                            <ul class="user_down-content-second">
		                                
		     
		                                <li class="user_down-content-item">
		                                    <i class="bx bx-font-family"></i>                     
		                                    <p class="user_icon-description">Ngôn ngữ: Tiếng Việt</p>
		                                    <div class="sub-arrow-right">
		                                        <i class="bx bx-chevron-right bxf-chevron-right-2"></i>
		                                    </div>
		                                 </li>
		     
		                                <li class="user_down-content-item">
		                                    <i class="bx bx-world"></i>
		                                    <p class="user_icon-description">Địa điểm: Việt Nam</p>
		                                    <div class="sub-arrow-right">
		                                        <i class="bx bx-chevron-right bxf-chevron-right-3"></i>
		                                    </div>
		                                 </li>
		     
		                                
		                                  <c:if test="${admin == 1 }">
		                                  <li class="user_down-content-item">
		                                    <i class="bx bxs-help-circle user-btn-fix"></i>
		                                    <p class="user_icon-description">Admin</p>
		                                 </li>
		                                  </c:if>
		                            </ul>
	
		                        </div>
                    		</li>  
                    	</c:when>
                    	<c:otherwise>
                    		<li class="user_down-content-item">
		                        <i class="bx bx-log-in"></i>
		                        <a href="login" class="user_icon-description" style="color: black; text-decoration: none" >Login</a>
                     		</li>
                    	</c:otherwise>
                    </c:choose>
                </ul>
    
        </div>

        <div class="slider_container_scroll">
            <ul class="container_scroll-list">
                <li class="container_scroll-item">
                    <a href="" class="container_scroll-link container_scroll-link-active">
                        Tất cả
                    </a>
                </li>

                <li class="container_scroll-item">
                    <a href="" class="container_scroll-link">
                        Danh sách kết hợp
                    </a>
                </li>

                <li class="container_scroll-item">
                    <a href="" class="container_scroll-link">
                        Âm nhạc
                    </a>
                </li>

                <li class="container_scroll-item">
                    <a href="" class="container_scroll-link">
                        Bóng đá
                    </a>
                </li>

                <li class="container_scroll-item">
                    <a href="" class="container_scroll-link">
                        Hoạt hình
                    </a>
                </li>

                <li class="container_scroll-item">
                    <a href="" class="container_scroll-link">
                        Du lịch
                    </a>
                </li>

                <li class="container_scroll-item">
                    <a href="" class="container_scroll-link">
                        Nghệ thuật thị giác
                    </a>
                </li>

                <li class="container_scroll-item">
                    <a href="" class="container_scroll-link">
                        Thú cưng
                    </a>
                </li>

                <li class="container_scroll-item">
                    <a href="" class="container_scroll-link">
                        Trực tiếp
                    </a>
                </li>

                <li class="container_scroll-item">
                    <a href="" class="container_scroll-link">
                        Trờ chơi hành động phiêu lưu
                    </a>
                </li>

                <li class="container_scroll-item">
                    <a href="" class="container_scroll-link">
                        Mới tải lên gần đây
                    </a>
                </li>

                <li class="container_scroll-item">
                    <a href="" class="container_scroll-link">
                        Đã xem
                    </a>
                </li>

                
                <li class="container_scroll-item">
                    <a href="" class="container_scroll-link">
                        Mới tải lên gần đây
                    </a>
                </li>

                
                <li class="container_scroll-item">
                    <a href="" class="container_scroll-link">
                        Mới tải lên gần đây
                    </a>
                </li>

                
                <li class="container_scroll-item">
                    <a href="" class="container_scroll-link">
                        Mới tải lên gần đây
                    </a>
                </li>

                
                <li class="container_scroll-item">
                    <a href="" class="container_scroll-link">
                        Mới tải lên gần đây
                    </a>
                </li>
                
                
                <li class="container_scroll-item">
                    <a href="" class="container_scroll-link">
                        Mới tải lên gần đây
                    </a>
                </li>
            </ul> 
            <button class="prev-btn">
                <i class="bx bxs-chevron-left button-chevron-left"></i>
            </button>

            <button class="next-btn next-transform-btn">
                <i class="bx bxs-chevron-right button-chevron-right"></i>
            </button>
            
       </div>
    
        <div class="container-xxl container-main">
            <div class="row g-0">
                <div class="col-1 hide-on-tm">
                    <div class="slider-small">
                        <ul class="slider_container-list">
                            <li class="slider_container-item">
                                <a href="" class="slider_container-link">
                                    <i class="bx bxs-home bxs-ctn-home"></i>
                                    <span class="slider_container-description slider-text-1">Trang chủ</span>
                                </a>
                            </li>
    
                            <li class="slider_container-item">
                                <a href="" class="slider_container-link">
                                    <i class="bx bxs-compass bxs-ctn-compass"></i>
                                    <span class="slider_container-description slider-fix-desc slider-text-2">Khám phá</span>
                                </a>
                            </li>
    
                            <li class="slider_container-item">
                                <a href="" class="slider_container-link">
                                    <i class="bx bxl-youtube bxl-ctn-youtube"></i>
                                    <span class="slider_container-description slider-fix-desc slider-text-3">Kênh đăng ký</span>
                                </a>
                            </li>
    
                            
                            <li class="slider_container-item">
                                <a href="" class="slider_container-link">
                                    <i class="bx bxs-videos bxs-ctn-videos"></i>
                                    <span class="slider_container-description slider-fix-desc slider-text-4">Thư viện</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
                
				<div class="col-11 container-videos" hidden>                                           
                    <div class="product_videos-total product_videos-total-X">
                        <div class="row render-list-videos">
                            
                        </div>                         
                    </div>                  
                </div>  
              <!-- Đây là bắt đầu load video  -->
	               <div class="col-11 container-videos">                                           
                    <div class="product_videos-total product_videos-total-X">
                        <div class="row">
                            <c:forEach items="${videos}" var="video">
                            	<div class="col-3 col-video-mb add-video-translateX product_video-X">
                                <div class="product_video">
                                    <a href="video?action=watch&id=${video.href }" class="product_video-link">
                                        <div class="product_video-img">
                                            <img  src="${video.poster }" alt="Avatar Video" class="product_video-img-main product_video-img-main-X">
                                            <span class="product_video-img-time">0:17</span>
                                            <div class="videos-icon-play">
                                                <i class="bx bx-play"></i>
                                            </div>
                
                                            <ul class="videos_list-icon-hover">
                                                <li class="videos_item-icon-hover videos_item-icon-hover-time">
                                                    <i class="bx bxs-time bxf-time"></i>
                                                    
                                                    <div class="list-icon-skiing-time">
                                                    <span>Xem sau</span>
                                                    </div>   
                                                </li>
                
                                                <li class="videos_item-icon-hover videos_item-icon-hover-list-ul">
                                                    <i class="bx bx-list-ul bxf-list-ul"></i>
                
                                                    <div class="list-icon-skiing-ul">
                                                    <span>Thêm vào danh sách chờ</span>
                                                    </div>
                                                </li>
                                            </ul>
                                        </div>
                
                                        <div class="product_video_content">                                                       
                                            <div class="product_video-description">
                                                <div class="product_video-title">
                                                    <h4>${video.title }</h4>
                                                </div>               
                                              <div class="product_video-user-channel-content">          
                                                    <div class="product_video-info">
                                                        <span class="product_video-info-view">${video.views } views</span>
                                                        <span class="product_video-info-dot">
                                                            <i class="fas fa-circle"></i>
                                                        </span>
                                                        <span class="product_video-info-date">8 tháng trước</span>
                                                    </div>
                                              </div>
                
                                                <div class="product_video-option">
                                                    <i class="bx bx-dots-vertical-rounded bxf-dots-vertical-rounded-video"></i>
                                                </div>
                
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </div>                       
                            </c:forEach>
                        </div>
                                         
                    </div>                  
                </div>                   
   <!-- Đây là kết thúcload video  -->        
            </div>
        </div>

        <div class="bridge-container-right">
                       
        </div>


    </div>
    
         <!-- Modal -->
<div class="modal fade" id="changePassModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Change Password</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        		 <div class="form-group">
        		 	<input type="password" name="currentPass" id="currentPass" class="form-control rounded-0"> Old Password
        		 </div>
        		 <div class="form-group">
        		 	<input type="password" name="newPass" id="newPass" class="form-control rounded-0"> New Password
        		 </div>
        		 <h5 style="color: red" id="messageChangePass"></h5>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-warning" data-dismiss="modal">Close</button>
        <button type="button" onclick="changePass()" class="btn btn-warning" id="changePassBtn">Save changes</button>
      </div>
    </div>
  </div>
</div>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
     <script src="teamplates/indexTeamplates/assets/js/main.js"></script>
    <script src="teamplates/indexTeamplates/assets/js/slider.js"></script>
	  <script>
  	function changePass() {
  	  var currentPass = document.getElementById("currentPass").value;
	  	var newa = document.getElementById("newPass").value;
	   
      const xhttp = new XMLHttpRequest();
      xhttp.onreadystatechange = function() {
    	  if (this.status == 400) {
    		  document.getElementById("messageChangePass").innerHTML = "Loi roi";
    	    }else {
    	    	document.getElementById("messageChangePass").innerHTML = "Your password has been changed successfully";	
			}
    	  
    	  
      }
      xhttp.open("POST", "changePass");
      xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
      xhttp.send("old="+currentPass+"&new="+newa);
     
      
  }
  </script>
</body>
   


</html>