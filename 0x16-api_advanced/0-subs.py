#!/usr/bin/python3
"""
Function that queries Reddit API
"""
import requests


def number_of_subscribers(subreddit):
    """
    Function that queries Reddit API and
    returns total number of subscribers
    """
    URL = "https://www.reddit.com/r/{}/about.json".format(subreddit)
    subs_status = requests.get(URL, headers={'User-agent': 'my-bot'})

    if subs_status.status_code == 200:
        return subs_status.json().get('data').get('subscribers')
    else:
        return 0
