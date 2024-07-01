#!/bin/bash

# Define variables
CHAINCODE_NAME="chaincodes"
CHANNEL_NAME="dochannel"
VERSION="1"
SEQUENCE="1"
ORDERER_CA="/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/ordererOrganizations/example.com/orderers/orderer.example.com/msp/tlscacerts/tlsca.example.com-cert.pem"
PEER0_ORG1_ADDRESS="peer0.org1.lnsw.com:7051"
PEER0_ORG1_TLS_ROOTCERT="/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org1.lnsw.com/peers/peer0.org1.lnsw.com/tls/ca.crt"
PEER0_ORG2_ADDRESS="peer0.org2.co.com:8051"
PEER0_ORG2_TLS_ROOTCERT="/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org2.co.com/peers/peer0.org2.co.com/tls/ca.crt"
PEER0_ORG3_ADDRESS="peer0.org3.sl.com:9051"
PEER0_ORG3_TLS_ROOTCERT="/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org3.sl.com/peers/peer0.org3.sl.com/tls/ca.crt"
PEER0_ORG4_ADDRESS="peer0.org4.to.com:10051"
PEER0_ORG4_TLS_ROOTCERT="/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org4.to.com/peers/peer0.org4.to.com/tls/ca.crt"
PEER0_ORG5_ADDRESS="peer0.org5.inaport.com:11051"
PEER0_ORG5_TLS_ROOTCERT="/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org5.inaport.com/peers/peer0.org5.inaport.com/tls/ca.crt"
PEER0_ORG6_ADDRESS="peer0.org6.bank.com:12051"
PEER0_ORG6_TLS_ROOTCERT="/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org6.bank.com/peers/peer0.org6.bank.com/tls/ca.crt"

# Commit chaincode
docker exec cli peer lifecycle chaincode commit -o orderer.example.com:7050 --tls --cafile $ORDERER_CA \
  --peerAddresses $PEER0_ORG1_ADDRESS --tlsRootCertFiles $PEER0_ORG1_TLS_ROOTCERT \
  --peerAddresses $PEER0_ORG2_ADDRESS --tlsRootCertFiles $PEER0_ORG2_TLS_ROOTCERT \
  --peerAddresses $PEER0_ORG3_ADDRESS --tlsRootCertFiles $PEER0_ORG3_TLS_ROOTCERT \
  --peerAddresses $PEER0_ORG4_ADDRESS --tlsRootCertFiles $PEER0_ORG4_TLS_ROOTCERT \
  --peerAddresses $PEER0_ORG5_ADDRESS --tlsRootCertFiles $PEER0_ORG5_TLS_ROOTCERT \
  --peerAddresses $PEER0_ORG6_ADDRESS --tlsRootCertFiles $PEER0_ORG6_TLS_ROOTCERT \
  --channelID $CHANNEL_NAME --name $CHAINCODE_NAME --version $VERSION --sequence $SEQUENCE