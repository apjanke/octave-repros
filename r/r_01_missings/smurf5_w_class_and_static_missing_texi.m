classdef smurf5_w_class_and_static_missing_texi
  ## -*- texinfo -*-
  ## @deftp {Class} smurf5_w_class_and_static_missing_texi
  ##
  ## A dummy class for doctest testing.
  ##
  ## This class just exists to exercise doctests. If you try tu use it for something
  ## useful, more fool you.
  ##
  ## @end deftp

  methods (Static = true)

    ## -*- texinfo -*-
    ## @node smurf5_w_class_and_static_missing_texi.missing
    ## @deftypefn {Static Method} {@var{out} =} smurf5_w_class_and_static_missing_texi.missing ()
    ## @deftypefnx {Static Method} {@var{out} =} smurf5_w_class_and_static_missing_texi.missing (sz)
    ##
    ## Create an array of missing (undefined) smurf5_w_class_and_static_missing_texi.
    ## (Actually, not really; this is just a placeholder for doctest testing.)
    ##
    ## @end deftypefn
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
