use ('pytech')

db.students.deleteOne({_id: ObjectId("62cb330549f51d4e20e0f689")})

db.students.find()

Output:
  [
  {
    "_id": 1007,
    "first_name": "Robert",
    "last_name": "Doe"
  },
  {
    "_id": 1008,
    "first_name": "Jane",
    "last_name": "Doe"
  },
  {
    "_id": 1009,
    "first_name": "Alfred",
    "last_name": "Hitchcock"
  }
]
