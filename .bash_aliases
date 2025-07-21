alias rm='rm -i'

alias java8="export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64"
alias java17="export JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64"
alias java21="export JAVA_HOME=/usr/lib/jvm/java-21-openjdk-amd64"
alias javad="java -agentlib:jdwp=transport=dt_socket,server=y,suspend=y,address=*:8000"
alias mvng="mvn archetype:generate -DarchetypeGroupId=org.apache.maven.archetypes -DarchetypeArtifactId=maven-archetype-quickstart -DarchetypeVersion=1.5" 
alias mcc="mvn clean compile" 
alias mprg="mvn dependency:purge-local-repository -DmanualInclude="

function mrj () { 
    mvn -q -e exec:java -Dexec.cleanupDaemonThreads=false -Dexec.mainClass="$1" -Dexec.args="$2 $3 $4 $5 $6 $7 $8"; 
}

function crj () {
    ( unset JAVA_TOOL_OPTIONS && mvn -q dependency:copy-dependencies && mvn compile -q -Dmaven.clean.fast ) \
    && java  -ea  -cp './target/classes:./target/dependency/*' $1 $2 $3 $4 $5 $6 $7 $8
}

function rj () {
    java -ea -cp  './src/main/resources:./target/classes:./target/dependency/*' $1 $2 $3 $4 $5 $6 $7 $8
}

alias sprr="mvn spring-boot:run" 
alias spre="mvn spring-boot:run -Dspring-boot.run.profiles=emb"
alias sprd="mvn spring-boot:run -Dspring-boot.run.profiles=dev"
alias sprp="mvn spring-boot:run -Dspring-boot.run.profiles=prod"
alias sprar="mvn spring-boot:run -Dspring-boot.run.arguments='"

alias spring="java -jar ~/temp/spring-cli/build/libs/spring-cli-0.10.0-SNAPSHOT.jar"
alias sqlcmd="sqlcmd -W"
function pos() {
    sudo -u postgres psql
}
function mys() {
    com="$@"
    mysql -uroot -ppassword_mysql "$com"
}

alias n="nvim"
alias e="~/MyEclipse/myeclipse"
alias sts="~/Downloads/sts-4.31.0.RELEASE/SpringToolSuite4"

export d="--debug -Xrunjdwp:transport=dt_socket,server=y,suspend=y,address=localhost:8000"
