

## 1. Build the JAR

```bash
# Maven
mvn clean package -DskipTests

# Gradle
./gradlew build -x test
Typical JAR locations:

Maven:  target/*.jar     (e.g. target/myapp-0.0.1-SNAPSHOT.jar)
Gradle: build/libs/*.jar

2. Recommended Dockerfile
(Flexible profile via environment variable)
dockerfile# Lightweight Java 17 runtime (~70–80 MB)
FROM eclipse-temurin:17-jre-alpine

WORKDIR /app

# Copy JAR (adjust pattern to match your project)
COPY target/*.jar app.jar
# Gradle alternative: COPY build/libs/*.jar app.jar

# Default profile — override at runtime with -e
ENV SPRING_PROFILES_ACTIVE=default

# Exec form → correct signal handling (SIGTERM / graceful shutdown)
ENTRYPOINT ["java", \
            "-Dspring.profiles.active=${SPRING_PROFILES_ACTIVE}", \
            "-jar", "app.jar"]
Why this style?
One image → many environments.
Never rebuild the image just to change dev → prod → dockerlocal.
3. Build the Image
Bashdocker build -t my-spring-app:latest .
4. Run Examples (Plain Docker)
Web app (port 8080)
Bashdocker run -d \
  --name my-app \
  -p 8080:8080 \
  -e SPRING_PROFILES_ACTIVE=dockerlocal \
  my-spring-app:latest
Interactive / console app
Bashdocker run -it \
  --name my-app \
  -e SPRING_PROFILES_ACTIVE=dockerlocal \
  my-spring-app:latest
5. Check Active Profile
Bashdocker logs my-app
Look for:
textThe following 1 profile is active: "dockerlocal"
6. Strongly Recommended: Docker Compose
(much simpler for development)
Create docker-compose.yml next to your Dockerfile:
YAMLversion: '3.8'

services:
  app:
    build: .
    image: my-spring-app:latest
    container_name: my-spring-app
    ports:
      - "8080:8080"                 # change if needed
    environment:
      - SPRING_PROFILES_ACTIVE=dockerlocal
    restart: unless-stopped         # optional
Most useful commands
Bash# Build + start detached
docker compose up -d --build

# Follow logs live
docker compose logs -f
# or
docker logs -f my-spring-app

# Stop (keeps containers)
docker compose stop

# Stop + remove containers
docker compose down

# Stop + remove containers + volumes (clean everything)
docker compose down -v

# Clean dangling images
docker image prune

# Clean all unused images (aggressive)
docker image prune -a

# Delete specific image
docker rmi my-spring-app:latest
7. IntelliJ Ultimate – Built-in Docker

Enable Docker plugin
Services tab → Docker → connect
Right-click Dockerfile → Build Image…
Right-click docker-compose.yml → Run / Debug
Easily edit environment variables in run configuration

Quick Reference Table





























GoalBest WayChange profile without rebuild-e SPRING_PROFILES_ACTIVE=… or compose envLocal dev workflowdocker compose up --build -dProduction readinessAdd non-root user + JAVA_OPTS RAM limitsVerify profiledocker logs → look for "profile is active"Clean updocker compose down -v + docker image prune
One image. Many environments.
Happy coding & deploying! 🚀