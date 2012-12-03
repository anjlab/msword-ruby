require "msword/version"
require 'open3'
require 'multi_json'

module MSWord

  def self.replace input_file, output_file, pairs
    args = {
      src: input_file,
      output: output_file,
      commands: [
        {
          command: :replace,
          args: pairs
        }
      ]
    }

    process(args)
  end

  def self.process args
    java_options = args.delete(:java_options) || "-Dfile.encoding=utf8 -Xms512m -Xmx512m -XX:MaxPermSize=256m"
    jar_path = File.join(File.dirname(__FILE__), "msword.jar")
    puts MultiJson.encode(args)
    Open3.popen3("java #{java_options} -jar #{jar_path}") do |stdin, stdout, stderr, wait_thr|
      stdin.write MultiJson.encode(args)
      stdin.close
      exit_status = wait_thr.value
      if exit_status != 0
        puts stdout.read
        puts stderr.read
      end
    end

  end

end
