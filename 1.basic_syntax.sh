#-------1일차-------
# 현재 위치 경로를 출력
pwd

# guswodnlcldptj vkdlf alc vhfej whghl
ls

# 목록조회 자세히
ls -l

# 목록조회 자세히 + 숨김파일까지 (이걸 주로 사용함)
ls -al

# 목록조회 자세히 + 숨김파일 + 오래된 순으로 정렬까지 
ls -alrt # (all list reverse time) (최신은 alt)

# 디렉토리 생성
mkdir donggil_dir

# 특정 디렉토리로 이동
cd donggil_dir

# 상위 디렉토리로 이동
cd ..
# 또는 cd ../ (루트는 생략 가능)

# 루트디렉토리(최상위디렉토리)로 이동
cd /

# 직전폴더로 이동
cd -

# 홈 경로로 이동 (/home/본인계정 으로 이동)
cd

# 상대경로와 절대경로
# 상대경로 : cd ../../
# 절대경로 : cd /home

#-------2일차-------

# 빈 파일 만들기
touch first_file.txt

# 파일 내용을 터미널창에 출력
cat first_file.txt

# 파일내용 상위 10줄 출력
head 파일명

# 파일내용 하위 10줄 출력
tail 파일명

# 파일내용 상/하위 n개 조회
tail -n 파일명

# 파일내용 실시간 조회
tail -f 파일명 #(명령어 이후의 내용을 실시간 조회, 실무에서 많이 쓰임)

# 파일내용 편집기 : name, vi
# 도스키 위/아래를 통해 이전명령어 조회
# 이전에 실행한 명령어 모두 조회
history
# 현재 내 터미널창에 보이는 명령어 내역 정리
clear
# ^c를 통해 입력명령어 취소

# 파일삭제 명령어 rm -f 옵션을 통해 묻지않고 삭제제
rm 파일명

# 폴더째 삭제
rm -r 폴더명명

# 터미널창에 문자열을 출력
echo "hello world"

# echo를 통해 파일에 내용 입력
# > : 덮어쓰기 >>: 추가모드
echo "hello world" > first_file.txt

# cp는 복사명령어
# cp 복사대상 복사될파일명
# 폴더 복사 시에는 -r 옵션 추가
cp 1_file.txt 2_file.txt
cp 1_file.txt ../2_file.txt

# grep : 파일 내에서 문자열 찾기
# r : 모든 디렉토리내, n : 라인수 출력, i : 대/소 구분 없이
grep -rni "hello" .


# find : 이름으로 파일 또는 디렉토리 찾기 
find . -name "*.txt"
find . -type f #(f옵션 파일 찾음)

# find와 grep의 혼용
find . -name "*.txt" | xargs grep -rni "hello"
find . -name "*.txt" -exec grep -rni "hello" {} \;

# 타입은 file이고 파일중에 이름은 first로 시작
# 그 파일들 안에 "hello" 라는 키워드가 들어가 있는 문장 찾기
find . -type f -name "first*" | xargs grep -rni "hello"
find . -type f -name "first*" -exec grep -rni "hello" {} \;