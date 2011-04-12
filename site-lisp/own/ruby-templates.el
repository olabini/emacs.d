(defun simple-block (name)
  (list '> name " " '> 'r '> 'n "end" '> 'n))


(tempo-define-template "ruby-class-no-super"
                       '(> "class " > (p "Class name: " class-name) > n > r > n "end # " (s class-name) > n )
                       "cl"
                       ""
                       'ruby-tempo-tags)

(tempo-define-template "ruby-class"
                       '(> "class " > (p "Class name: " class-name) " < " (p "Super class: ") > n > r > n "end # " (s class-name) > n )
                       "cla"
                       ""
                       'ruby-tempo-tags)

(tempo-define-template "ruby-module"
                       '(> "module " > (p "Module name: " module-name) > n > r > n "end # " (s module-name) > n )
                       "mod"
                       ""
                       'ruby-tempo-tags)

(tempo-define-template "ruby-def"
                       (simple-block "def")
                       "def"
                       ""
                       'ruby-tempo-tags)

(tempo-define-template "ruby-defs"
                       '(> "def self." > r > n > "end" > n)
                       "defs"
                       ""
                       'ruby-tempo-tags)

(tempo-define-template "ruby-if"
                       (simple-block "if")
                       "if"
                       ""
                       'ruby-tempo-tags)

(tempo-define-template "ruby-if-else"
                       '(> "if " > r > n > "else" > n "end" > n )
                       "ife"
                       ""
                       'ruby-tempo-tags)

(tempo-define-template "ruby-if-elsif"
                       '(> "if " > r > n > "elsif " > n "else" > n "end" > n )
                       "eif"
                       ""
                       'ruby-tempo-tags)

(tempo-define-template "ruby-while"
                       (simple-block "while")
                       "whi"
                       ""
                       'ruby-tempo-tags)

(tempo-define-template "ruby-until"
                       (simple-block "until")
                       "unt"
                       ""
                       'ruby-tempo-tags)

(tempo-define-template "ruby-unless"
                       (simple-block "unless")
                       "unl"
                       ""
                       'ruby-tempo-tags)

(tempo-define-template "ruby-begin"
                       '(> "begin" n > r > n > "rescue " > n > "end" > n)
                       "beg"
                       ""
                       'ruby-tempo-tags)

(tempo-define-template "ruby-ensure"
                       '(> "begin" n > r > n > "ensure" > n > "end" > n)
                       "ens"
                       ""
                       'ruby-tempo-tags)

(tempo-define-template "ruby-test-case"
                       '("require 'test/unit'" > n n "class " r " < Test::Unit::TestCase" > n "def test_truth" > n "assert true" > n "end" > n "end" > n)
                       "tc"
                       ""
                       'ruby-tempo-tags)

(tempo-define-template "ruby-expectation"
                       '("require 'rubygems'" > n "require 'expectation'" > n n "Expectations do" > n "expect " > (p "Expectation: " exp) > " do" > n r > (s exp) > n "end" > n "end" > n)
                       "ex"
                       ""
                       'ruby-tempo-tags)

(tempo-define-template "ruby-spec"
                       '("require 'rubygems'" > n "require 'spec'" > n n "describe " > (p "Describe: ") > " do " > n r > n "end" > n)
                       "des"
                       ""
                       'ruby-tempo-tags)

(tempo-define-template "ruby-it"
                       '("it \"" > (p "Should: ") > "\" do" > n > r > n > "end" > n >)
                       "it"
                       ""
                       'ruby-tempo-tags)

(tempo-define-template "ruby-require"
                       '("require '" r "'" > n)
                       "req"
                       ""
                       'ruby-tempo-tags)

(tempo-define-template "ruby-lambda"
                       '("lambda { |*args| " r " } " > n)
                       "lam"
                       ""
                       'ruby-tempo-tags)

(tempo-define-template "ruby-path-from-here"
                       '("File.join(File.dirname(__FILE__), *%w[" r "])" > n)
                       "pat"
                       ""
                       'ruby-tempo-tags)

(tempo-define-template "ruby-enumerable"
                       '("include Enumerable" > n n "def each(&block)" > n > r > n "end" > n)
                       "enum"
                       ""
                       'ruby-tempo-tags)

(tempo-define-template "ruby-reader"
                       '("attr_reader :" > r > n)
                       "r"
                       ""
                       'ruby-tempo-tags)

(tempo-define-template "ruby-writer"
                       '("attr_writer :" > r > n)
                       "w"
                       ""
                       'ruby-tempo-tags)

(tempo-define-template "ruby-accessor"
                       '("attr_accessor :" > r > n)
                       "rw"
                       ""
                       'ruby-tempo-tags)

(tempo-define-template "ruby-method-missing"
                       '("def method_missing(name, *args, &block)" > n > r > n "end" > n)
                       "mm"
                       ""
                       'ruby-tempo-tags)

(tempo-define-template "ruby-case"
                       '("case " > r > n "when " > n "else " > n "end" > n)
                       "case"
                       ""
                       'ruby-tempo-tags)

(provide 'ruby-templates)
