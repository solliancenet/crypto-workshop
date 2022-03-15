# 04 / Digital Wallets

Cryptocurrencies are stored in digital and hardware based wallets.  You can generate your own or use hosted wallets where you own the key to gain access to the wallet's contents.

## Exercise 1: Wallets with Metamask

### Install Metamask

- Open a browser window to https://metamask.io/download/
- Select **Install MetaMask for Chrome**
- Select **Add to Chrome**
- In the dialog, select **Add extension**
- In the new window, select **Get started**
- Select **Create a wallet**
- Select **I Agree**
- Enter a password such as **CryptoRules**
- Select **Next**
- Select **CLICK HERE TO REVEAL SECRET WORDS**, copy the phrases locally.
- Select **Next**
- Arrange the phrases in the matching order you just copied, select **Confirm**
- Select **Add Done**, close any dialogs

### Add Networks to Metamask

- In the top right, select the **Etherum Mainnet** dropdown
- Select **Add Network**
- For the name, type **Smart Chain Mainnet**
- For the RPC Url, type **https://bsc-dataseed.binance.org/**
- For the ChainID, type **56**
- For the Symbol, type **BNB**
- For the Block Explorer URL, type **https://bscscan.com**
- Select **Save**
- In the top right, select the **Smart Chain Mainnet** dropdown
- Select **Add Network**
- For the name, type **Smart Chain Testnet**
- For the RPC Url, type **https://data-seed-prebsc-1-s1.binance.org:8545/**
- For the ChainID, type **97**
- For the Symbol, type **tBNB**
- For the Block Explorer URL, type **https://testnet.bscscan.com**
- Select **Save**
- Copy the wallet address by clicking the **Account 1** link at the top of the browser window

### Test receiving and sending tokens

- Open the [Binance Smart Chain Faucet](https://testnet.binance.org/faucet-smart) website
- Copy the smart chain address you created above
- Select **Give me BNB**, then select **1 BNB**
- Switch back to your wallet, you should see `1 BNB` displayed.
- Open the [BNB Smart Chain Testnet Explorer](https://testnet.bscscan.com/), copy a random address
- Switch back to the Metamask wallet, select **Send**
- Enter the random wallet
- For the amount, enter the **.5 BNB** you received, notice you can't select the full amount due to gas costs.
- Select **Next**
- Select **Confirm**

## Exercise 2: Other Wallets

Explore the other popular wallets available for storing your coins and tokens.

- Each wallet provider has varying features and functionality, some of them are focused on a single coin (like Bitcoin) and some are mobile device based only (such as Android and iOS).

Software:

- https://www.coinbase.com/wallet
- https://electrum.org
- https://wallet.mycelium.com/
- https://www.exodus.com/

Hardware:

- [Ledger Nano X](https://secure.money.com/pr/sa58b80ad920?ap_referrer=https%3A%2F%2Fmoney.com%2Fbest-crypto-wallets%2F&apnavid=18f7b5267c3a4966fe7d0af61d1f8d24)
- https://trezor.io/
- https://shapeshift.com/keepkey

### Exploring Seed Phrases

Seed phrases are designed to keep your wallet secure and accessible.  There are different types of seed phrases and we explore each of them here.  These mnemonics include various different specs including:

- [BIP32](https://github.com/bitcoin/bips/blob/master/bip-0032.mediawiki)
- [BIP39](https://github.com/bitcoin/bips/blob/master/bip-0039.mediawiki)
- [BIP44](https://github.com/bitcoin/bips/blob/master/bip-0044.mediawiki)
- [BIP49](https://github.com/bitcoin/bips/blob/master/bip-0049.mediawiki)
- [BIP84](https://github.com/bitcoin/bips/blob/master/bip-0084.mediawiki)
- [BIP141](https://github.com/bitcoin/bips/blob/master/bip-0141.mediawiki)

- You can explore these using the [Mnemonic Code Converter](https://iancoleman.io/bip39/) tool by Ian Coleman to generate the various types of wallets and codes.
  