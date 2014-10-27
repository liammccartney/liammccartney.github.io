---
layout: post
title: SQL vs NoSQL
---

## SQL vs NoSQL
Just from my little research done on the topic, it seems that the discussion of SQL vs NoSQL is quite the hot topic. A lot of it is above me, but I will do my best to explain their differences, pros, and cons below.

## SQL - Structured Query Language
SQL is the standard language used to read, write, and retrieve data from relational database. A relational database is one that is made up of tables that are related to one another through common characteristics in the dataset. These common attributes make up primary-key/foreign-key relationships. This allows a user to query multiple tables of a database at once, compare data between tables, and create new tables of data that wouldn’t necessarily be grouped together. These kinds of databases have a rigidly designed structure called a schema. The data can only be entered in as rows of a table, with each column holding a value specific to that row. It is a bit of a one-size-fits-all solution to storing data.

## NoSQL - Not Only SQL
NoSQL is a relatively new way of storing data as a database. Rather than relying on a pre-determined (and rigid) schema, a NoSQL database has a dynamic schema. In fact data is not entered into the database as a table either. Data is stored in varying kinds of documents like key/value pairs or graphs. These databases aren’t relational. NoSQL was designed because of the immense amount of data we are handling as a society today. NoSQL is faster and lighter than SQL. It plays well with enormous datasets. It allows for varying kinds of data to be stored together. NoSQL is also horizontally scalable - meaning its data and its processing power is contained across multiple servers, add more servers for a faster database. Where as SQL is vertically scalable, necessitating a better server to improve performance.
Perhaps the biggest drawback to NoSQL so far is how young it is. Lots of features have yet to be implemented simply because they haven’t been completed yet.
NoSQL doesn’t have the community, or vast resources available to a user, like SQL does.
SQL is a lot easier to use, NoSQL queries are complex and require great programming skill to write and understand. In fact SQL’s queries are much more powerful right now.
