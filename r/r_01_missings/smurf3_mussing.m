classdef smurf3_mussing

  methods (Static)

    function out = mussing (sz)
      # The "mussing" name is intentionally misspelled, to avoid collidance with "missing".
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
