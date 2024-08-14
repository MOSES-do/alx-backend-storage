#!/usr/bin/env python3
"""using find to return documents of a collection"""


def list_all(mongo_collection):
    """returns all documents of a collection in a list"""
    return [doc for doc in mongo_collection.find()]
