---
layout: crate
crate: "rand"
authors: ["César SAGAERT"]
maintainers: ["César SAGAERT <sagaert@adacore.com>"]
licenses: ["Apache-2.0 WITH LLVM-exception"]
websites: ["https://github.com/AldanTanneo/rand-ada"]
tags: ["random",
"chacha20",
"rng",
"getrandom",
"security"]
version: "0.1.0"
short_description: "Random number generation toolkit"
dependencies: [{crate: "rand_chacha", version: "~0.1.0"},
{crate: "rand_core", version: "~0.1.0"},
{crate: "rand_distributions", version: "~0.1.0"},
{crate: "rand_sys", version: "~0.1.0"},
{crate: "rand_xoshiro256", version: "~0.1.0"}]
configuration_variables: []
configuration_values: []

---
# Random number generation toolkit for Ada

Design principles mostly inspired by the [rand](https://github.com/rust-random/rand) Rust crate.

The project is split into several subcrates. `rand_core`, `rand_chacha`, `rand_xoshiro256` and `rand_distributions` can be used on embedded; However, `rand_sys` (and its dependent `rand`, the main crate) pull entropy from system sources, using the [`system_random`](https://alire.ada.dev/crates/system_random) Alire crate.

## Usage examples

Get a thread local instance of a secure Random Number Generator (RNG), seeded with system entropy:

```ada
with Rand;
R : Rand.Rng := Rand.Thread_Rng;
--  alternatively:
R : Rand.Rng := Rand.Small_Rng;
   --  a fast, unsecure RNG seeded with system entropy
R : Rand.Rng := Rand.Sys.Get;
   --  RNG based on system randomness sources
   --  (OS-dependent)
```

Use convenience methods on the RNG to generate basic types:

```ada
V1 : Float := R.Gen;        --  a float in the range [0, 1)
V2 : Long_Integer := R.Gen; --  a long integer over the whole range
```

You can also define your own random number generators by implementing the `Rand.Core_Rng` interface (alias for `Rand_Core.Rng`).

Use `Next` and `Next_Bytes` to get the raw output of any RNG:

```ada
Buf : Rand.Core.Bytes (1 .. 256);
R.Next_Bytes (Buf);
X : Rand.Core.U64 := R.Next;
```

Use a predefined random distribution to get finer random value selection:

```ada
use Rand.Distributions;
D1 : Uniform_Nat.Distribution := Uniform_Nat.Create (8, 27);
S : Natural := D1.Sample (R);
   --  sample in the inclusive range [8, 27]

D2 : Bernoulli := Bernoulli.Create (0.25);
S : Boolean := D2.Sample (R);
   --  a boolean that is True 25% of the time
```

Or define your own distributions:

```ada
use Rand.Distributions;

type Gaussian is new Long_Float_Distr.Distribution with record
   Sigma : Long_Float;
end record;

overriding
function Sample (D : Gaussian; R : in out Rand.Rng) return Long_Float
is (...); --  sampling the custom distribution
```

Even on your own types:

```ada
with Rand_Distributions; use Rand_Distributions;

type My_Rec is record
   A : Integer;
   B : Float;
end record;

package I is new Generic_Distribution (My_Rec);
--  define the interface distributions over your type must implement

type My_Distr is new I.Distribution with null record;

overriding
function Sample (D : My_Distr; R : in out Rand.Rng) return My_Rec
is (A => 4, --  chosen by fair dice roll
    B => R.Gen);
```


