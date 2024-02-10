classdef smurf2_missing

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
