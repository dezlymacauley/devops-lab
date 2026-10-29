# Intro to the Amazon S3 service
_______________________________________________________________________________

s3 stands for `Simple Storage Service` (three S's, hence the name S3).

It's important to not that s3 is a `global AWS service`, 
which means ??

however when you create an `s3 Bucket`, 
that bucket will be created in a specific region.

s3 is a data storage service.

It is an object based storage system.

Each object consists of:

Key: The name used to identify the object within its bucket.

Data: The actual content of the object.

Metadata: Information about the object, such as its content type and last-modified time.
_______________________________________________________________________________

## The structure of an S3 Bucket
_______________________________________________________________________________

An `S3 Bucket` contains objects

An object is a file that you upload into the bucket.

#### Note:
- The each s3 bucket on AWS must have a globally unique name.
_______________________________________________________________________________

## How objects are stored in an S3 Bucket

Objects in an S3 Bucket are stored using a `flat namespace`.

This is different to the traditional way of how files are stored on a device
like a laptop or a phone.
_______________________________________________________________________________

On a laptop, files are organized using directories:
```
dating-app/
├── profiles/
│   ├── cassie_profile.png
│   ├── cassie_bio.json
│   ├── lisa_profile.png
│   └── lisa_bio.json
├── messages/
│   ├── chat_history_cassie.json
│   ├── chat_history_lisa.json
│   └── message_attachment.png
└── user_matches.json
```
_______________________________________________________________________________

S3 works differently. 

Objects in an S3 Bucket are stored using a `flat namespace`.

Every object is stored at the root of the bucket.

However to make it easy to organize files, 
s3 allows you to use prefixes before the file name, 
which create the illusion of a directory.

```
dating-app-bucket
├── profiles/cassie_profile.png
├── profiles/cassie_bio.json
├── profiles/lisa_profile.png
├── profiles/lisa_bio.json
├── messages/chat_history_cassie.json
├── messages/chat_history_lisa.json
├── messages/message_attachment.png
└── user_matches.json
```
You can use prefixes
_______________________________________________________________________________

## Accessing a file

These files can be accessed by making an API request.
_______________________________________________________________________________
