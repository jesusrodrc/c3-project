export const config = {
  "dev": {
    "username": process.env.POSGRESS_USERNAME,
    "password": process.env.POSGRESS_PASSWORD,
    "database": process.env.POSGRESS_DB,
    "host": process.env.POSGRESS_HOST,
    "dialect": "postgres",
    "aws_reigion": process.env.AWS_REGION,
    "aws_profile": process.env.AWS_PROFILE,
    "aws_media_bucket": process.env.AWS_BUCKET,
    "url": process.env.URL
  },
  "prod": {
    "username": "",
    "password": "",
    "database": "udagram_prod",
    "host": "",
    "dialect": "postgres"
  },
  "jwt": {
    "secret": process.env.JWT_SECRET
  }

}
