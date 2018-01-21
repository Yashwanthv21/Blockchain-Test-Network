module.exports = {
  // See <http://truffleframework.com/docs/advanced/configuration>
  // to customize your Truffle configuration!
  networks: {
  development: {
    host: "localhost",
    port: 8545,
    network_id: "*" // match any network
  },
  admin: {
    host: "35.188.153.104",
    port: 8000,
    network_id: "*",
  },
  client2: {
   host: "104.154.188.66",
   port: 8000,
   network_id: "*",
 }
}
};
