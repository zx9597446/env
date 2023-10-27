use admin
db.createUser(
  {
    user: "root",
    pwd: "pass",
    roles: [
          { role: "userAdminAnyDatabase", db: "admin" },
          { role: "readWriteAnyDatabase", db: "admin" },
          { role: "dbAdminAnyDatabase", db: "admin" },
          { role: "clusterAdmin", db: "admin" }
       ]
  }
)

// mongosh < create_mongo_user.js
// security:
//     authorization: "enabled"
