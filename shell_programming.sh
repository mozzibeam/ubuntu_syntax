# 쉘스크립트 작성 : 반드시 확장자 .sh
touch myscript.sh
nano myscript.sh
echo "hello world"
chmod u+x
# 스크립트 실행
./myscript.sh

# 터미널창에 "script practice start" 문구 출력
# 홈디렉토리에서 mydir이라는 폴더 생성
# mydir로 이동해서 file1.txt, file2.txt 파일생성
# file1.txt에는 hello from file1 문구
# file2.txt에는 hello from file2 문구
# file1.txt파일을 백업본(copy본)을 생성, 이름은 file1_backup.txt
# file2.txt파일은 이름은 file2_rename.txt로 변경
# 터미널창에 "script practice end" 문구 출력

# myscript2 생성후 아래 코드 작성 및 실행
# if문
if [ 1 -gt 2 ]; then
    echo "hello world1"
else
    echo "hello world2"
fi

# 변수 선언 및 파일/디렉토리 검사 (myscript3.sh)
file_name = first_file.txt
if [ -f "$file_name" ]; then
    echo "$file_name file exists"
else
    echo "$file_name file doesn't exists"
fi

# for문
for a in {1..100}
do
    echo "hello world$a"
done

# for문과 파일/디렉토리 목록조회
for a in *
do
    echo "$a"
done

# for문의 변수값을 증가
count=0
for a in {1..100}
do
    let count=count+1
done
echo "count value is $count"

# for문 및 변수값 세팅 활용
filecount=0, dircount=0
for a in *
do
    if [ -f "$a" ]; then
        let filecount=filecount+1
    else
        let dircount=dircount+1
    fi  
done
    echo "file count is $filecount"
    echo "directory count is $dircount"