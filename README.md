# 🪙 Decentralized Stablecoin Project

Welcome to the **Decentralized Stablecoin Project**, a cutting-edge decentralized finance (DeFi) protocol built with [Foundry](https://book.getfoundry.sh/) and Solidity. This project aims to provide a decentralized stablecoin backed by overcollateralized assets to ensure stability, transparency, and trust.

![Solidity](https://img.shields.io/badge/solidity-%23363636.svg?style=for-the-badge&logo=solidity&logoColor=white)
![Foundry](https://img.shields.io/badge/foundry-%23000000.svg?style=for-the-badge&logoColor=white)

---

## 🚀 Features

- **Decentralized Stablecoin**: A stablecoin pegged to USD, backed by robust collateral.
- **Overcollateralized Mechanism**: Ensures stability even during volatile market conditions.
- **Liquidation Protocol**: Protects the system by liquidating undercollateralized positions.
- **Modular Design**: Built with scalability and modularity using Foundry.

---

## 📂 Project Structure

```
├── contracts/
│   ├── DSCEngine.sol        # Core logic for the decentralized stablecoin engine
│   ├── DSC.sol              # ERC20-compliant stablecoin implementation
│   └── Oracles/             # Price feed oracles
├── test/
│   ├── DSCEngine.t.sol      # Test cases for the DSCEngine
│   └── Helpers.t.sol        # Utilities for testing
├── scripts/
│   ├── deploy.s.sol         # Deployment script
│   └── interactions.s.sol   # Interaction examples
├── README.md                # Project documentation
└── foundry.toml             # Foundry configuration
```

---

## ⚙️ Installation

1. **Clone the repository**:

   ```bash
   git clone https://github.com/yourusername/defi-stablecoin.git
   cd defi-stablecoin
   ```

2. **Install Foundry**:

   Follow the instructions in the [Foundry Book](https://book.getfoundry.sh/getting-started/installation.html) to install Foundry.

3. **Build the project**:

   ```bash
   forge build
   ```

4. **Run tests**:

   ```bash
   forge test
   ```

---

## 🛠️ Usage

### Deployment

1. Configure your `.env` file with the necessary environment variables (e.g., private keys, RPC URLs).
2. Deploy the contracts:

   ```bash
   forge script scripts/deploy.s.sol --rpc-url <RPC_URL> --private-key <PRIVATE_KEY> --broadcast
   ```

### Interactions

- Mint stablecoins by depositing collateral.
- Check your collateral and debt balance.
- Redeem collateral by repaying your debt.

---

## 🧪 Testing

Run the comprehensive test suite:

```bash
forge test --fork-url <RPC_URL>
```

---

## 📜 License

This project is licensed under the [MIT License](LICENSE).

---

## 🧑‍💻 Contributing

Contributions are welcome! Please follow these steps:

1. Fork the repository.
2. Create a feature branch (`git checkout -b feature-name`).
3. Commit your changes (`git commit -m "Add feature"`).
4. Push to the branch (`git push origin feature-name`).
5. Open a pull request.

---

## 📞 Contact

For questions or support, reach out at:
- **Email**: solodevelopershub@gmail.com

---

## 🌐 Resources

- [Foundry Documentation](https://book.getfoundry.sh/)
- [Solidity Documentation](https://soliditylang.org/)
- [Chainlink Oracles](https://chain.link/)

---

### Contributors

- [Pavan](https://github.com/named-as-pavan)  
- Open for contributors! 🌟

---

![Built with Foundry](https://img.shields.io/badge/built%20with-foundry-%23000000)
