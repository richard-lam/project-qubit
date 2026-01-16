# Classical vs Quantum Computing

## 1. Basic Unit of Information

| Aspect | Classical Computing | Quantum Computing |
|--------|-------------------|-----------------|
| Unit   | **Bit** — 0 or 1  | **Qubit** — 0, 1, or **superposition** of both |
| Representation | Voltage levels, transistors | Quantum states (e.g., spin, photon polarization) |
| State Collapse | Deterministic | Measurement collapses superposition probabilistically |

---

## 2. Logic & Computation

| Aspect | Classical Computing | Quantum Computing |
|--------|-------------------|-----------------|
| Logic Gates | AND, OR, NOT | X, Y, Z, H, RX, RY, RZ, CNOT, Toffoli, etc. |
| Reversibility | Usually irreversible | Quantum gates are reversible (unitary) |
| Parallelism | Sequential / limited hardware parallelism | **Quantum parallelism** via superposition: multiple states processed simultaneously |

---

## 3. Algorithms & Speedups

| Aspect | Classical | Quantum |
|--------|-----------|---------|
| Search | O(n) linear search | O(√n) Grover’s algorithm (quadratic speedup) |
| Factoring | Exponential time for large numbers | O((log N)^3) Shor’s algorithm (exponential speedup) |
| Simulation | Classical simulation of quantum systems is expensive | Natural simulation of quantum systems |

---

## 4. Measurement & Probability

- **Classical:** Reading a bit always yields 0 or 1 deterministically.
- **Quantum:** Measuring a qubit gives probabilistic results based on amplitude squared:
  $$ P(0) = |\alpha|^2, \quad P(1) = |\beta|^2 $$
- Repeated measurements are required to estimate probabilities.

---

## 5. Hardware Considerations

| Aspect | Classical | Quantum |
|--------|-----------|---------|
| Noise | Minimal; can use error correction easily | Highly susceptible to decoherence, noise |
| Scalability | Mature, millions of transistors | Challenging; qubit fidelity and error correction limit scale |
| Environment | Room temperature | Often requires cryogenic temperatures or special isolation |

---

## 6. Problems Suited for Quantum Advantage

- **Unstructured search:** Grover's algorithm
- **Integer factoring:** Shor's algorithm
- **Quantum simulation:** Physics, chemistry, materials science
- **Linear algebra / optimization:** HHL algorithm, QAOA, VQE

---

## 7. Key Takeaways

- Quantum computing **does not universally outperform classical computing**; it shines on specific problem types.
- Classical computing is **deterministic, robust, and mature**.
- Quantum computing is **probabilistic, fragile, and emerging**, but provides **unique computational advantages** in areas like search, simulation, and cryptography.

