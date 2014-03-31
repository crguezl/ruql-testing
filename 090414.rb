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
        type: type
        left: result
        right: right
    result
</pre>
}
  answer ["lookahead", "lookahead.type", "term()"]
  end
  #foot :'examples/footer.html'
  
end
