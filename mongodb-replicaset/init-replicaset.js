use admin
var config = {
  "_id":"mongo-replicaset",
  "members":[
    {"_id":0,"host":"mongodb-db01:27017"},
    {"_id":1,"host":"mongodb-db02:27017"},
    {"_id":2,"host":"mongodb-db03:27017",arbiterOnly:true}
  ]
};
rs.initiate(config);
