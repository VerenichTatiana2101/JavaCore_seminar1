FROM bellsoft/liberica-openjdk-alpine:11.0.16.1-1
COPY ./src ./src
RUN javac -sourcepath ./src -d ./out ./src/main/Main.java
RUN java -classpath ./out main/Main
RUN javadoc -d ./doc -sourcepath ./src -cp ./out -subpackages calc main
