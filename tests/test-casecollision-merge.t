  $ hg init repo1
  $ cd repo1
create base revision
  $ echo base > base.txt
  $ hg add base.txt
  $ hg commit -m 'base'
add same file in different case on both heads
  $ echo a > a.txt
  $ hg add a.txt
  $ hg commit -m 'add a.txt'
  $ hg update 0
  0 files updated, 0 files merged, 1 files removed, 0 files unresolved
  $ echo A > A.TXT
  $ hg add A.TXT
  $ hg commit -m 'add A.TXT'
merge another, and fail with case-folding collision
  abort: case-folding collision between a.txt and A.TXT

check clean-ness of working directory

  $ hg status
  $ hg init repo2
  $ cd repo2

create base revision (rev:0)

  $ hg import --bypass --exact - <<EOF
  > # HG changeset patch
  > # User null
  > # Date 1 0
  > # Node ID e1bdf414b0ea9c831fd3a14e94a0a18e1410f98b
  > # Parent  0000000000000000000000000000000000000000
  > add a
  > 
  > diff --git a/a b/a
  > new file mode 100644
  > --- /dev/null
  > +++ b/a
  > @@ -0,0 +1,3 @@
  > +this is line 1
  > +this is line 2
  > +this is line 3
  > EOF
  applying patch from stdin

create rename revision (rev:1)

  $ hg import --bypass --exact - <<EOF
  > # HG changeset patch
  > # User null
  > # Date 1 0
  > # Node ID 9dca9f19bb91851bc693544b598b0740629edfad
  > # Parent  e1bdf414b0ea9c831fd3a14e94a0a18e1410f98b
  > rename a to A
  > 
  > diff --git a/a b/A
  > rename from a
  > rename to A
  > EOF
  applying patch from stdin

update to base revision, and modify 'a'
  1 files updated, 0 files merged, 0 files removed, 0 files unresolved

update to current tip linearly

check status and contents of file
  M A
  this is line 1
  this is line 2
  this is line 3
  this is added line