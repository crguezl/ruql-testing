quiz %q{REPASO. 2ª PARTE. <br />
ANÁLISIS SINTÁCTICO} do

  #head :'examples/header.html'
  
  fill_in do 
    text %q{
Dado un conjunto $A$, se define $A^*$ el cierre de Kleene de $A$ como:
\( A^* = \cup_{n=1}^{\infty} A^n \)
Se admite que $A^0 = \{ \epsilon \}$, donde $\epsilon$ denota la
--- ---, esto es
la palabra que tiene longitud cero, formada por cero símbolos del conjunto base $A$.}
    answer [/palabra/i, /vac[ií]a/i]
  end

  fill_in do
    text %q{
Una producción de la forma $A \rightarrow A \alpha$.
se dice que es --- por la ---
}
    answer [/recursiva/i, /izquierda/i]
  end

  fill_in do
    text %q{
Recuerde el <b>analizador sintáctico descendente predictivo recursivo</b> 
para la <a id="grammar">gramática</a>:<br/>
<ul>
  <li> $\Sigma = \{ ; =, ID, P, ADDOP, MULOP, COMPARISON, (, ), NUM \}$, 
  <li> $V = \{ statements, statement, condition, expression, term, factor \}$
  <li> Productions:
  <ol>
    <li>
    statements  $ \rightarrow$ statement ';' statements  $\vert$ statement
    <li>
    statement  $ \rightarrow$ ID '=' expression  $\vert$ P expression
 $ \vert$ IF condition THEN statement·
    <li> condition $ \rightarrow$ expression COMPARISON expression
    <li>
    expression  $ \rightarrow$ term ADDOP expression  $\vert$ term
    <li>
    term  $ \rightarrow$ factor MULOP term  $\vert$ factor
    <li>
    factor  $ \rightarrow$ '(' expression ')' $\vert$ ID $ \vert$ NUM
  </ol>
  <li> Start symbol: $statements$
</ul>
Rellene las partes que faltan de código CoffeeScript del 
método que se encarga de reconocer el lenguaje generado
por <tt>expression</tt>:
<pre>
  expression = ->
    result = term()
    while --- and --- is "ADDOP"
      type = lookahead.value
      match "ADDOP"
      right = ---
      result =
        type: ---
        left: result
        right: right
    result
</pre>
}
  answer ["lookahead", "lookahead.type", "term()", "type"]
  end

  fill_in do
    text %q{
Rellene las partes que faltan de código CoffeeScript del 
método que se encarga de reconocer el lenguaje generado
por <tt>statement</tt> para la <a href="#grammar">gramática
definida anteriormente</a>:
<pre>
    statement = function() {
      var left, result, right;
      result = null;
      if (--- && --- === "ID") {
        left = {
          type: "---",
          value: ---.value
        };
        match("ID");
        match("=");
        right = ---();
        result = {
          type: "=",
          left: left,
          right: right
        };
      } else if (--- && ---.--- === "P") {
        match("P");
        right = expression();
        result = {
          type: "P",
          value: ---
        };
      } else if (--- && ---.--- === "IF") {
        match("---");
        left = ---;
        match("THEN");
        right = ---;
        result = {
          type: "IF",
          left: ---,
          right: ---
        };
      } else {
        throw "Syntax Error. Expected identifier but found " + 
         (lookahead ? lookahead.value : "end of input") + 
         (" near '" + (input.substr(lookahead.from)) + "'");
      }
      return result;
    };
</pre>
}
  answer [
  "lookahead",           #1
  "lookahead.type",      #2
  "ID",                  #3
  "lookahead",           #4
  "expression",          #5
  "lookahead",           #6
  "lookahead",           #7
  "type",                #8
  "right",               #9
  "lookahead",           #10
  "lookahead",           #11
  "type",                #12
  "IF",                  #13
  /expression|condition/, #14
  /statement/,            #15
  /left/,                 #16
  /right/                 #17
  ]
  end

  fill_in do
    text <<-'CONDITION'
Rellene las partes que faltan del código CoffeeScript
que reconoce el sublenguaje generado por <i>condition</i>:
  <pre>
  condition = ->
    left = ---()
    type = ---.---
    match "COMPARISON"
    right = ---()
    result =
      type: type
      left: left
      right: right
    result
  </pre>
CONDITION
   answer ['expression', 'lookahead', 'value', 'expression']
  end

  fill_in do
    text %q{
Complete este fragmento de <tt>slim</tt> que establece el favicon de 
la página HTML:} + 
%q{
<pre>
    link rel="---" type="image/jpg" href="images/favicon.jpg"
</pre>}
  answer /(shortcut\s+)?icon/i
  end
  #foot :'examples/footer.html'
  
end
