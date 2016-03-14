module Overcommit::Hook::PreCommit
  # Runs `rubocop` against any modified Ruby files.
  class RuboCop < Base
    MESSAGE_TYPE_CATEGORIZER = lambda do |type|
      type.include?('W') ? :warning : :error
    end

    def run
      p "3"
      result = execute(command + applicable_files)
      p "begin"
      p command
      p "_____________________________________"
      p applicable_files
      p "end"
      p result
      return :pass if result.success?

      extract_messages(
        result.stdout.split("\n"),
        /^(?<file>[^:]+):(?<line>\d+):[^ ]+ (?<type>[^ ]+)/,
        MESSAGE_TYPE_CATEGORIZER,
      )
    end
  end
end
