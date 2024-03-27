
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)


# Project Name

## SimpleStorage With Solidity Using Foundry
This project demonstrates a basic smart contract written in Solidity for the Ethereum blockchain. The contract allows users to store and retrieve a single piece of data called storedData.

## Features:

- Stores a uint256 value (storedData).
- Tracks the number of times the data has been modified (callCount).
- Provides functions to:
    - Set the stored data (set(uint256)).
    - Retrieve the current data value (get()).
    - Get the call count (getCallCount()).
    - Increment the stored data by a specific amount (increment(uint256)) (all functions are free to
    call, no Ether required).
- Emits a ValueChanged event whenever the stored data is modified.

## Getting Started

### Requirements

- **[git](https://git-scm.com/downloads)**: You'll know you did it right if you can run `git --version` and you see a response like `git version x.x.x`.

- **[ganache](https://archive.trufflesuite.com/ganache/)**: You'll know you did it right if you can run the application and see: `ganache`. You can alternatively use `ganache-cli` or `hardhat`.

- **[foundry](https://book.getfoundry.sh/getting-started/installation)**: You'll know you did it right if you can run `forge --version` and you see a response like `forge 0.2.0 (816e00b 2023-03-16T00:05:26.396218Z)`.


### Optional: Gitpod

If you can't or don't want to run and install locally, you can work with this repo in Gitpod. If you do this, you can skip the "Clone this repo" part.

[Open in Gitpod](link_to_gitpod)

## Setup

1. **Clone this repo:**

    ```bash
    git clone https://github.com/dev-ose/foundry-simple-storage
    cd foundry-simple-storage-f23
    ```

2. **Run your ganache local chain:**

   - Hit quickstart on your ganache application.
   - Save the workspace. This way, next time you open ganache you can start the workspace you've created, otherwise you'll have to redo all the steps below.

3. **Copy the RPC SERVER string in your ganache CLI, and place it into your `.env` file similar to what's in `.env.example`.**

    ```bash
    ganache
    ```

    `.env` Example:

    ```plaintext
    RPC_URL=http://0.0.0.0:8545
    ```

4. **Hit the key on one of the accounts, and copy the key you see and place it into your `.env` file, similar to what you see in `.env.example`.**

    ```bash
    ganache
    ```

    `.env` Example:

    ```plaintext
    PRIVATE_KEY=11ee3108a03081fe260ecdc106554d09d9d1209bcafd46942b10e02943effc4a
    ```

5. **Compile your code:**

    ```bash
    forge compile
    ```

6. **Deploy your contract:**

    ```bash
    forge create SimpleStorage --private-key <PRIVATE_KEY>
    ```

### Windows, WSL, & Ganache

If you're using WSL, for the ganache UI you'll have to use a different endpoint. You have 4 options to fix this:

- Use the WSL endpoint on the ganache UI (this sometimes doesn't work).
- Use anvil (We will move to anvil at some point anyways...).
- Deploying to a testnet.

### Deploying to a Testnet

1. Make sure you have a Metamask or other wallet, and export the private key.

   **IMPORTANT:**

   USE A METAMASK THAT DOESN'T HAVE ANY REAL FUNDS IN IT. Just in case you accidentally push your private key to a public place. I highly recommend you use a different Metamask or wallet when developing.

2. Export your private key and place it in your `.env` file, as done above.

3. Go to Alchemy and create a new project on the testnet of choice (i.e., Goerli).

4. Grab your URL associated with the testnet, and place it into your `.env` file.

5. Make sure you have testnet ETH in your account. You can get some [here](link_to_get_testnet_ETH). You should get testnet ETH for the same testnet that you made a project in Alchemy (i.e., Goerli).

6. Run:

    ```bash
    forge create SimpleStorage --private-key <PRIVATE_KEY> --rpc-url <ALCHEMY_URL>
    ```

    Or, you can use a deploy script:

    ```bash
    forge script script/DeploySimpleStorage.s.sol --private-key <PRIVATE_KEY> --rpc-url <ALCHEMY_URL>
    ```

## Additional Notes:
- This is a basic example and doesn't implement access control mechanisms.
- For real-world applications, consider adding features like user authentication and authorization.

## Arigato!