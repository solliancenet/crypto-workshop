# Solana

Duration: ~2 hours

This lab will take you thru a client-side approach to working with the
Solana blockchain.

In this lab you will:

- 🔌 Connect to a Solana cluster using the web3.js library

- 🏦 Generate a new keypair, then fund the resulting address with an
    airdrop

- 💸 Transfer tokens between accounts

- ⛓ Deploy and interact with a Solana program (aka Smart Contract),
    written in Rust

1. With your Gitpod ready to use, within the Sample Browser tab, scroll
down until you see the Chains listing.

2. Select Solana.

![Graphical user interface, application Description automatically
generated](./images/media/image9.png)

## Welcome to the Solana Pathway

Read the overview instructions that appear for the Pathway. This first
step does not require you to make any code changes, it's just an
overview of the approach so you know what to expect.

When you've finished reading the overview, look for a large navigation
button labeled Setup the Project near the bottom right of the Sample
Browser panel and select that.

    ![](./images/media/image42.png)

## Setup the project

The first thing you need to do in this step is to install the Solana
CLI. To install the CLI into your GitPod instance, follow these steps:

1. Near the bottom right of the Sample Browser panel, at the top of the
    terminal panel, select the + button and then select bash to create a
    new bash shell instance.\
    ![Graphical user interface, application Description automatically
    generated](./images/media/image43.png)

2. Within the bash shell that appears, paste the following command to
    download and install the Solana CLI.\
    \
    sh -c \"\$(curl -sSfL
    <https://release.solana.com/v1.10.5/install>)\"\
    \
    ![Text Description automatically generated with low
    confidence](./images/media/image44.png)

3. When it finishes you will see a note to close and reopen your
    terminal to apply the path changes.

4. Run the following command to add the Solana CLI path to your active
    terminal session:\
    \
    export
    PATH=\"/home/gitpod/.local/share/solana/install/active_release/bin:\$PATH\"

5. Close the bash terminal you just opened by hovering over the word
    bash on the far right of the terminal area and selecting the trash
    icon.\
    ![Graphical user interface, application Description automatically
    generated](./images/media/image45.png)

6. Load a new bash terminal instance by selecting the + button as you
    did before and selecting bash.\
    ![Graphical user interface, text, application, chat or text message
    Description automatically
    generated](./images/media/image46.png)

7. Confirm you have Solana installed by running:\
    \
    solana --version

8. You should see output similar to the following:\
    \
    ![](./images/media/image47.png)

Next you will need to get you DataHub API keys. In this step, right
click the Signup for DataHub link and select to open that in new tab in
your browser.

    ![Graphical user interface, text, application, chat or text message Description automatically generated](./images/media/image11.png)

Switch to that tab and complete the registration for the free DataHub
account.

![Graphical user interface, text, application, email Description
automatically
generated](./images/media/image12.png)

Confirm your e-mail address.

![Graphical user interface, text, application, email Description
automatically
generated](./images/media/image13.png)

![Graphical user interface, application, PowerPoint Description
automatically generated](./images/media/image14.png)

Login to Datahub with the credentials you created

![Graphical user interface, text, website Description automatically
generated](./images/media/image15.png)

Return to the Gitpod environment and follow the instructions for
acquiring a DataHub key and adding to your code.

Be sure to select Solana as the protocol when creating your app in
DataHub!

When you have copied the key, you will need to create a .env.local file
in which to store it. Follow these steps:

1.  From the left treeview of the Gitpod environment under the root
    folder /learn-web3-dapp locate the file .env.example.

2.  Right click the file and select Rename. Change the name to just
    .env.local

3.  Double click the .env file to open it in a new editor panel.

![Graphical user interface, application Description automatically
generated](./images/media/image16.png)

Paste your key as instructed and close the .env.local tab.

NOTE: Whenever the instructions tell you edit code, look for the code
file in the Explorer tree view just as you did for the .env.example
file.

Select the navigation button Connect to Solana to continue.


## Connect to Solana

Follow the instructions. Make sure to select Network-\>Devnet before
selecting connect otherwise you will see an error.

When complete you should see something like:

![](./images/media/image48.png)

Select the navigation button Create an account to continue.

## Create an account

Follow the instructions. When complete you should see something like:

![](./images/media/image49.png)

Select the navigation button Fund the account with SOL to continue.

## Fund the account with SOL

Follow the instructions. When you select Fund this address you should
see something like:

![Graphical user interface, text, application, chat or text message
Description automatically
generated](./images/media/image50.png)

Open the View on Solana Explorer link in a new browser tab and take
moment to read the details of the transaction as it was captured in the
blockchain. Look at the fee that was charged. Also, examine the Transfer
Amount (SOL) to see how much was moved.

![A screenshot of a computer Description automatically
generated](./images/media/image51.png)

Select the navigation button Get the balance to continue.

## Get the balance

Follow the instructions. When you select Fund this address you should
see something like:

![Graphical user interface, text, application, chat or text message
Description automatically
generated](./images/media/image52.png)

Select the navigation button Transfer some SOL to continue.

## Transfer some SOL

Follow the instructions to complete the code.

Provide the amount to transfer and select Generate an address to create
a random address to transfer the test funds to.

![Graphical user interface, text, application Description automatically
generated](./images/media/image53.png)

Then select Submit Transfer. When you select Submit Transfer you should
see something like:

![Graphical user interface, text, application, chat or text message
Description automatically
generated](./images/media/image54.png)

Take a look at the transaction on the Solana Explorer.

Select the navigation button Deploy a program to continue.

## Deploy a program

Follow the instructions and execute the commands provided in your Gitpod
terminal.

When you get to the Challenge, be sure you go back to the Connect to
Solana step and change the Network to localnet. Then return to this
Deploy a program step to continue using the localnet as your network.

The output of your deployment includes the program ID you will need to
paste into the text box before selecting Check Deployment.

![Text Description automatically
generated](./images/media/image55.png)

Copy that value and paste it into the text box similar to the following:

![Graphical user interface, text, application, chat or text message,
email Description automatically
generated](./images/media/image56.png)

Then proceed with completing the code. When you have done so and
selected Check Deployment, you should see something similar to the
following:

![Graphical user interface, text, application, chat or text message
Description automatically
generated](./images/media/image57.png)

Select the navigation button Create storage for the program to continue.

## Create storage for the program

Follow the instructions, you should see something similar to the
following when successful:

![Graphical user interface, text, application, chat or text message
Description automatically
generated](./images/media/image58.png)

Select the navigation button Get data from the program to continue.

## Get data

Follow the instructions, you should see something like the following
when successful:

![](./images/media/image59.png)

Select the navigation button Pathway Complete to continue.
