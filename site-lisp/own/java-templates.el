(tempo-define-template "java-main"
                       '("public static void main(String[] args) throws Exception {" > n > r > n "}" > n)
                       "main"
                       ""
                       'java-tempo-tags)

(tempo-define-template "java-class-no-super"
                       '("public class " >  (p "Class name: ") " {" > n > r > n "}" > n )
                       "cl"
                       ""
                       'java-tempo-tags)

(tempo-define-template "java-class"
                       '("public class " >  (p "Class name: ") " extends " (p "Super class: ") " {" > n > r > n "}" > n )
                       "cla"
                       ""
                       'java-tempo-tags)

(tempo-define-template "java-interface"
                       '("public interface " >  (p "Interface name: ") " {" > n > r > n "}" > n )
                       "in"
                       ""
                       'java-tempo-tags)

(tempo-define-template "java-attr"
                       '("private " (p "Type: " type) " " (p "Name: " var) ";" > n n 
                         "public " > (s type) " get" (upcase-initials (tempo-lookup-named 'var))
                         "() {" > n
                         "return this." (s var)  ";" > n "}" > n n
                         "public void set" (upcase-initials (tempo-lookup-named 'var))
                         "(final " (s type) " " (s var) ") {" > n
                         "this." (s var) " = " (s var) ";" > n "}" > n)
                         "attr"
                         ""
                         'java-tempo-tags)

(tempo-define-template "java-import"
                       '("import " >  (p "Import: ") ";" n)
                       "im"
                       ""
                       'java-tempo-tags)

(tempo-define-template "java-system-err-println"
                       '("System.err.println(\"" > r "\");" > n )
                       "sep"
                       ""
                       'java-tempo-tags)

(provide 'java-templates)
