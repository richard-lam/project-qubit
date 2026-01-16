# project-qubit
I’m using Project Qubit to learn how quantum algorithms differ fundamentally from classical ones, and to document that understanding through code.

# Project Qubit Learning Roadmap

---

## 00_classical_vs_quantum — Introduction

**Goal:** Understand the fundamental differences between classical and quantum computing before diving into qubits and algorithms.

**Topics to study:**
- **Basic unit of information:** Bits vs Qubits
- **Superposition & probabilistic measurement**
- **Quantum parallelism** vs classical sequential computation
- **Reversible vs irreversible gates**
- **Algorithms suited for quantum advantage:** Grover, Shor, quantum simulation

**Exercises / Notebooks:**
1. Compare classical search vs Grover's algorithm
2. Observe probabilistic outcomes of quantum measurements
3. Explore Bloch sphere representation of single qubits

**Files you could create:**
- `classical_vs_quantum.ipynb`

---

## 01_qubit_basics — Understanding a single qubit

**Goal:** Learn what a qubit is, how it differs from a classical bit, and how measurement works.

**Topics to study:**
- **Superposition:**  
  $$
  \lvert \psi \rangle = \alpha \lvert 0 \rangle + \beta \lvert 1 \rangle
  $$
- **Probability amplitudes:**  
  $$
  |\alpha|^2 + |\beta|^2 = 1
  $$
- Measurement collapses superposition to 0 or 1
- Bloch sphere visualization

**Exercises / Notebooks:**
1. Quantum coin flip:
   - Initialize $\lvert 0 \rangle$
   - Apply Hadamard (H) → superposition
   - Measure and plot histogram
2. Explore multiple shots to see probability distribution
3. Visualize on Bloch sphere using `qiskit.visualization.plot_bloch_multivector`

**Files you could create:**
- `superposition.ipynb`
- `measurement_experiment.ipynb`

---

## 02_quantum_gates — Manipulating qubits

**Goal:** Learn quantum logic gates and how to build circuits.

**Topics to study:**
- **Single-qubit gates:** X (NOT), Y, Z (phase flips), H (Hadamard), RX, RY, RZ  
- **Multi-qubit gates:** CNOT (entanglement), SWAP  
- Reversibility of gates  
- Gate diagrams and circuit construction in Qiskit

**Exercises / Notebooks:**
1. Apply different single-qubit gates to $\lvert 0 \rangle$ and measure outcome probabilities  
2. Build a 2-qubit circuit and apply CNOT to see how entanglement starts  
3. Draw circuits with `qc.draw('mpl')`

**Files you could create:**
- `hadamard.ipynb`
- `cnot_example.ipynb`
- `rotation_gates.ipynb`

---

## 03_entanglement — Qubits interacting

**Goal:** Understand multi-qubit entanglement — the essence of quantum power.

**Topics to study:**
- Bell states (maximally entangled two-qubit states)
- GHZ states (three-qubit entanglement)
- Measurement correlations between entangled qubits
- Why entanglement is critical for quantum algorithms

**Exercises / Notebooks:**
1. Create a Bell pair:
   - Apply H to qubit 0
   - Apply CNOT (control qubit 0, target qubit 1)
   - Measure both qubits and see correlations
2. Try GHZ state with 3 qubits
3. Visualize state vector with Qiskit

**Files you could create:**
- `bell_states.ipynb`
- `ghz_states.ipynb`

---

## 04_grovers_algorithm — Small quantum algorithm

**Goal:** Implement a simple, concrete algorithm showing quantum advantage.

**Topics to study:**
- Grover’s search:
  - Oracle marks the correct state
  - Diffusion operator amplifies amplitude
  - Superposition → interference → measurement
- Why this beats classical search in theory (quadratic speedup)
- Working with small 2-qubit or 3-qubit examples

**Exercises / Notebooks:**
1. 2-qubit Grover search:
   - Oracle marks $\lvert 10 \rangle$
   - Apply diffusion
   - Measure histogram
2. Try modifying oracle to mark $\lvert 01 \rangle$, $\lvert 11 \rangle$
3. Discuss results in markdown alongside code

**Files you could create:**
- `grover_2qubit.ipynb`
- `grover_3qubit_experiment.ipynb`

---

## Learning strategy / workflow

1. **Start small** — one notebook at a time  
2. **Code + visualize + explain** — markdown is as important as code  
3. **Commit often** — every concept mastered is a GitHub milestone  
4. **End goal** — each directory has:
   - Code
   - Notebook
   - Explanation in markdown
   - Optional plots / diagrams
