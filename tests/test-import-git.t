  $ hg init repo
  $ cd repo
#if execbit
  $ hg rollback -q
#else
  $ hg tip -q
  1:ab199dc869b5
#endif
Copy and removing x bit:
  $ hg import -f -d "1000000 0" -mcopy - <<EOF
#if execbit
  $ hg tip -q
  2:21dfaae65c71
  $ hg tip -q
  2:0efdaa8e3bf3
  $ hg up -qCr1
  $ hg rollback -q

Copy (like above but independent of execbit):

  $ hg import -d "1000000 0" -mcopy - <<EOF
  > diff --git a/new b/copy
  > similarity index 100%
  > copy from new
  > copy to copy
  > diff --git a/new b/copyx
  > similarity index 100%
  > copy from new
  > copy to copyx
  > EOF
  applying patch from stdin

  $ hg tip -q
  2:0efdaa8e3bf3
  $ test -f copy

  3:b1f57753fad2
  4:1bd1da94b9b2
  5:46fe99cb3035
  6:ffeb3197c12d
  7:401aede9e6bb
  8:2ef727e684e8
  8 rename2 rename3 rename3-2 / rename3 (rename2)rename3-2 (rename2)
  10:27377172366e
  11:18b73a84b4ab
  12:47500ce1614e
  13:6757efb07ea9
  repository tip rolled back to revision 14 (undo import)
  working directory now based on revision 14
#if symlink

#endif
