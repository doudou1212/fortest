module Overcommit::Hook::PreCommit
 class StaticSecurityScanner < Base
    def run
      result = exec('buildtasks/tests/static_security_scanner.sh')
      return :pass if result.success?
      return :fail
    end
 end
end
