  $ "$TESTDIR/hghave" unix-permissions || exit 80

  $ chmod +x dummypatch.py
  abort: path contains illegal component: ../outside/foo
--- in commit message