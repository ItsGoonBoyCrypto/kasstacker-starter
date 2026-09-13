# kasstacker-starter

**Your first Kaspa covenant, ready to compile.** This is the `SimpleCovenant` from the
official Silverscript tutorial — twelve lines that lock coins so they can only ever be
sent to one baked-in recipient — packaged so the compile works on the first try.

From zero:

```bash
git clone https://github.com/kaspanet/silverscript ../silverscript
./compile.sh
```

That produces `artifact.json` — a compiled covenant. The constructor argument (the
recipient pubkey, a 32-byte value in Silverscript's portable ABI format) is supplied by
`args.json`; a zero key is fine for a first compile, and swapping in a real pubkey is a
one-line change.

## What now?

- **Understand what you just built** — the guided walkthrough at
  [kasstacker.org/build/first-covenant](https://kasstacker.org/build/first-covenant)
  explains every line, and you can [try to break this exact contract](https://kasstacker.org/learn/try-it)
  in your browser.
- **Change the rule** — the [Silverscript tutorial](https://github.com/kaspanet/silverscript/blob/master/docs/TUTORIAL.md)
  and the [KCC20 book](https://kaspanet.github.io/silverscript/kcc20-book/) take it from here.
- **Prove it still compiles** — this repo's CI re-runs the compile against current
  Silverscript daily, the same way [kasstacker.org](https://kasstacker.org) verifies
  everything it publishes.

## Honesty note

This contract teaches the mechanism, not production hardening: it constrains only
output 0's destination — not amounts, not other outputs, not who signs. Read
[what it can't do](https://kasstacker.org/learn/try-it) before trusting it with anything.

MIT licensed.
