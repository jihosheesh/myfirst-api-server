# 베이스 이미지 설정
# FROM openjdk:17-jdk-slim
FROM openjdk:26-ea-21-jdk-slim

# 작업 디렉토리 설정
WORKDIR /app

# 애플리케이션 포트
EXPOSE 8080

# 필요하면 JVM 메모리 옵션 활성화
#ENV JAVA_OPTS="-Xms256m -Xmx512m"

# 빌드한 JAR 파일 추가
ADD ./target/*.jar app.jar

# 애플리케이션 실행
ENTRYPOINT ["sh", "-c", "java $JAVA_OPTS -jar app.jar"]