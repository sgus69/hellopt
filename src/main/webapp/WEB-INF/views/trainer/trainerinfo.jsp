<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>트레이너상세정보</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/board/trainerinfo.css">
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
</head>
<body>
    <div id="wrap">
        <header id="">

        </header>
        <div class="trainerbox">
            <div class="trainerImg">
                <img src="${pageContext.request.contextPath}/resources/images/trainer/trainer1.jpg" alt="트레이너" class="trainerImg_img">
            </div>
            <div class="trainerinfo">
                <h2 class="trainertitle">${trainerinfo.trainerName }<span class="nick">${trainerinfo.trainerNickname }</span></h2>
                <div class="career">
                    <h3 class="h3_font">경력</h3>
                    <pre class="trainertxt">${trainerinfo.trainerCareer }</pre>
                </div>
                <div class="word">
                    <h3 class="h3_font">트레이너 한마디</h3>
                    <pre class="trainertxt">${trainerinfo.trainerTalk }</pre>
                </div>
                <div class="trainer_media">
                    <h3 class="trainer_media_txt">트레이너 영상</h3>
                    <div class="trainer_media_box"><%-- ${trainerinfo.trainerMedia } --%>
                    <iframe width="792" height="300"
									src="https://www.youtube.com/embed/${trainerinfo.trainerMedia }" frameborder="0"
									allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
									allowfullscreen></iframe>
                    </div>
                </div>
                <div class="trainer_reply">
                    <div class="trainer_reply_box">
                        <h3 class="reply_left">To. 트레이너 선생님께</h3>
                        <button class="reply_right">감사 인사말 작성하기</button>
                    </div>
                    <div class="replybox">
                        <div class="replybox_inner">
                            <div class="userbox">
                                <p>문정아</p>
                                <p>스탠다드 16기 / 교대 / 맨몸FIT - Lv2</p>
                                <p>별별별</p>
                            </div>
                            <div class="replytxt">
                                <p>처음 버핏영상속 샘의 열정적인 모습에 용기내어 시작한 클레스가 마무리가 되었내요. 두시간의 시간이 마치 이십분인것처럼 보내며 아깝지않은 시간이 될수 있게 해주셔서 진심으로 감사드립니다.^^<br>
                                힘들었지만 중독성강한 버핏!! 바로 다음기수는 일정상 어렵게되었지만 꼭 다시 만나뵙고 운동하고 싶습니다!<br>
                                너무 고생하셨습니다. 다시 한번 감사의 맘을 전하며 샘의 영육간의 건강과 평화를 빌겠습니다~ 화이팅!!</p>
                                <br>
                                <p class="reply_date">2020년02월22일</p>
                            </div>
                        </div>
                         <div class="replybox_inner">
                            <div class="userbox">
                                <p>문정아</p>
                                <p>스탠다드 16기 / 교대 / 맨몸FIT - Lv2</p>
                                <p>별별별</p>
                            </div>
                            <div class="replytxt">
                                <p>처음 버핏영상속 샘의 열정적인 모습에 용기내어 시작한 클레스가 마무리가 되었내요. 두시간의 시간이 마치 이십분인것처럼 보내며 아깝지않은 시간이 될수 있게 해주셔서 진심으로 감사드립니다.^^<br>
                                힘들었지만 중독성강한 버핏!! 바로 다음기수는 일정상 어렵게되었지만 꼭 다시 만나뵙고 운동하고 싶습니다!<br>
                                너무 고생하셨습니다. 다시 한번 감사의 맘을 전하며 샘의 영육간의 건강과 평화를 빌겠습니다~ 화이팅!!</p>
                                <br>
                                <p class="reply_date">2020년02월22일</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</body>
</html>