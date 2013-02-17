module Strapper

  class Parser

    def eval_strapfile(strapfile)
      contents = File.open(strapfile, "rb") {|f| f.read }
      instance_eval(contents)
    end

    def brew(name, version=nil)
      Brew.new(name, version).run
    end

    def cmd(cmd_to_run)
      Cmd.new(cmd_to_run).run
    end

    def method_missing(method, *args, &block)
      if Registry.keyword?(method)
        Registry.class_for_keyword(method).new(*args).run
      else
        super
      end
    end

  end

end