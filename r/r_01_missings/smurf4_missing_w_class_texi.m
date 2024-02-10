classdef smurf4_missing_w_class_texi
  ## -*- texinfo -*-
  ## @deftp {Class} smurf4_missing_w_class_texi
  ##
  ## A dummy class for doctest testing.
  ##
  ## This class just exists to exercise doctests. If you try tu use it for something
  ## useful, more fool you.
  ##
  ## @end deftp

  methods (Static = true)

    function out = missing (sz)
      # This does not return a real missing value; it's just here as a structural test
      out = 420.69;
    endfunction

  endmethods

  methods

    function hello (this)
      fprint('Hello, world!\n')
    endfunction

  endmethods

endclassdef
