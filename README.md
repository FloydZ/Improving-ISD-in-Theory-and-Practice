Optimizers for the paper [New Time-Memory Trade-Offs for Subset Sum -- Improving ISD in Theory and Practice](https://eprint.iacr.org/2022/1329)

The idea for using `scipy.optimize` is from Xavier Bonnetain, Rémi Bricout, André Schrottenloher  and Yixin Shen [Paper](https://eprint.iacr.org/2020/168), specially from their [code repository](https://github.com/xbonnetain/optimization-subset-sum)

Installation:
=====

Simply run:
```bash
git clone https://github.com/FloydZ/Improving-ISD-in-Theory-and-Practice
```
to get the code. You need `pandas`, `numpy` `matplotlib` and `scipy`. To
install those dependencies run:
```bash
pip install -r requirements.txt
```
finally you can run `python optimize.py`.

Alternative Installation:
=====
If you have `nix` installed or you are on `nixos` you can use `nix-shell` to
instanciate a shell with all requirements.

You can also use the jupyter notebook via:
```bash
jupyter notebook
```

Usage:
======
To optimize `BBSS` run
```bash
python optimize.py --new_bbss
```
valid algorithms are `bbss, bcj, bjmm, mmt, new_bbss, new_bcj, new_bjmm, new_mmt`. 
Sometimes `scipy` will not be able to find the minimal runtime directly, if so 
you can increase the number of iteratios `scipy` can use during its optimization
process like:
```bash
python optimize.py --new_bbss --retries 100000
```

To receive verbose output, e.g. details on all parameters run:
```bash
python optimize.py --new_bbss --verbose
```

To optimize under memory constrains run
```bash
python optimize.py --new_bbss --memlimit
```
