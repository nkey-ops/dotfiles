alias rm='rm -i'
alias shot="import tmp.png"
alias mvng="mvn archetype:generate -DarchetypeGroupId=org.apache.maven.archetypes -DarchetypeArtifactId=maven-archetype-quickstart -DarchetypeVersion=1.5" 
alias mcc="mvn clean compile" 
alias mprg="mvn dependency:purge-local-repository -DmanualInclude="

mrj () { mvn -q -e exec:java -Dexec.cleanupDaemonThreads=false -Dexec.mainClass="$@"; }

alias sprr="mvn spring-boot:run" 
alias sprd="mvn spring-boot:run -Dspring-boot.run.profiles=dev"
alias sprp="mvn spring-boot:run -Dspring-boot.run.profiles=prod"
alias sprar="mvn spring-boot:run -Dspring-boot.run.arguments='"

alias spring="java -jar ~/temp/spring-cli/build/libs/spring-cli-0.10.0-SNAPSHOT.jar"
alias idea="~/idea-IC-242.23339.11/bin/idea"

alias mssql="sqlcmd -Slocalhost -Usa -P''"
alias sqlcmd="sqlcmd -W"

alias n="nvim"

# mvn install:install-file 
# -Dfile=file
# -DgroupId=lib 
# -DartifactId=lib 
# -Dversion=1 
# -Dpackaging=jar
