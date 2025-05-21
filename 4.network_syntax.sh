# 프로세스 목록조회
ps -ef # 굉장히 많이 쓰임
ps -ef | grep "nginx"

# 패키지 관련
# yum : 레드헷계열 패키지관리도구
# apt 또는 apt-get : 데비안계열 패키지관리도구
# 패키지 최신화
sudo apt update
# nginx 설치 
sudo apt install nginx
# 프로그램 실행관리 도구 : systemctl
sudo systemctl start nginx
sudo systemctl stop nginx
# 프로세스 강제 종료
kill -9 프로세스ID

# 네트워크 관련한 명령어
# 로컬ip 정보 조회
ifconfig

# 특정 도메인의 ip 주소 정보 조회 DNS 서버에 문의
nslookup naver.com

# 네트워크 연결상태 조회
# 일반적으로 ping은 보안상 막아둠
ping ip주소
ping 8.8.8.8 #구글 DNS SERVER

# ip의 포트를 이용해, 특정 프로그램의 이용가능상태까지 조회
# 일반적으로 telnet 막혀있거나, 사용하기를 권장하지 않음.
telnet ip주소 포트번호
# net cat
nc -zv ip주소(또는 도메인) 포트번호

# 원격접속 (22번 포트)
ssh 계정명@domain주소(ip주소)
# 원격 파일전송송 (22번 포트)
scp 전송하고자하는 파일 원격지주소