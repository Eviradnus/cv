# Curriculum Vitæ

My CV in LaTeX using [moderncv](https://ctan.org/pkg/moderncv).

## Build

To produce a `cv.pdf` file:
```
make all \
    -e EMAIL=your@mail.com \
    -e MOBILE="06 12 34 56 78" \
    -e ADDRESS1="1, rue du Général" \
    -e ADDRESS2="75000 Paris, France"
```

Nota: personal stuff is not versioned to avoid spam; it is injected at build time, when generating a PDF.

