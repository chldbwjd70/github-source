#기본으로 사용할 이미지 다운로드
FROM openjdk:15

#3번 서버에 빌드된 자르파일을 기본이미지에 복붙
RUN mkdir -p jar

WORKDIR /jar


# ARG JAR_FILE= ./domain/build/libs/domain-1.0-SNAPSHOT.jar

COPY ./domain/build/libs/domain-1.0-SNAPSHOT.jar boot.jar

#해당 이미지를 컨테이너로 띄울 시 자동으로 자르파일이 실행되도록 명령
ENTRYPOINT ["java","-jar","/jar/boot.jar"]