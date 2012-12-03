JAR     = "vendor/msword-java/target/msword-1.0.0.jar"
LIB_JAR = "lib/msword.jar"

file LIB_JAR => JAR do
  cp JAR, LIB_JAR
end

def mvn command
  sh "cd vendor/msword-java && mvn #{command}"
end

file JAR do
  mvn "clean package"
end

task build: LIB_JAR

task :clean do
  mvn "clean"
end

require "bundler/gem_tasks"