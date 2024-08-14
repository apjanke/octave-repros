## build fails with parallel builds - octave-devel - 2024-08

In 2024-08, my builds of octave-devel started failing, when done with parallel make jobs. Noticed on eilonwy (Apple Silicon (AS)).

Installing with `brew install --HEAD octave-devel`.

When I do `HOMEBREW_MAKE_JOBS=1 brew install --HEAD octave-devel` to try to debug it, it succeeds. (JOBS=1 gives you more readable build logs.)

## Journal

### 2024-08-10 ish

First failure: octave-devel_01-FAIL-MP-AS

Tail of build log has a bunch of these "Cannot allocate memory" failures. Like, hundreds. This is from a few days ago

```
/bin/sh run-octave -disable-asan --norc --quiet --no-history --path /private/tmp/octave-devel-20240808-9601-3ml33v/doc/interpreter/ --eval "interpimages ('doc/interpreter/', 'interpn', 'txt');"
/bin/sh run-octave -disable-asan --norc --quiet --no-history --path /private/tmp/octave-devel-20240808-9601-3ml33v/doc/interpreter/ --eval "interpimages ('doc/interpreter/', 'interpderiv1', 'txt');"
/bin/sh run-octave -disable-asan --norc --quiet --no-history --path /private/tmp/octave-devel-20240808-9601-3ml33v/doc/interpreter/ --eval "interpimages ('doc/interpreter/', 'interpderiv2', 'txt');"
find: find: find: find: echofind: echoechoecho: find: : Cannot allocate memory
Cannot allocate memory
echo: Cannot allocate memory
: Cannot allocate memory
find: echo: Cannot allocate memory
echo: Cannot allocate memory
: Cannot allocate memory
find: find: find: find: find: echo: Cannot allocate memory
find: echofind: find: echo: echoecho: : echo: Cannot allocate memory
: echoecho: Cannot allocate memory
: Cannot allocate memory
Cannot allocate memory
[...]
find: echo: Cannot allocate memory
find: echo: Cannot allocate memory
find: echo: find: echo: Cannot allocate memory
Cannot allocate memory
find: echo: Cannot allocate memory
find: find: echo: Cannot allocate memory
fork: find: Resource temporarily unavailable
echo: Cannot allocate memory
error: 'fullfile' undefined near line 130, column 16
error: called from
    interpimages>image_as_txt at line 130 column 3
    interpimages at line 29 column 5

make[2]: *** [doc/interpreter/interpn.txt] Error 1
```

Ran it again today on eilonwy, and also on angharad, and it worked fine. Then uninstalled and re-built it, and got the "Cannot allocate memory" errors again. So it's intermittent.

I don't see much memory use in Activity Monitor when watching its memory history while doing the builds.

