#!/usr/bin/python3
"""
Function that queries Reddit API
"""
import requests


def top_ten(subreddit):
    """
    Function that queries Reddit API and returns
    the first 10 hot posts listed for a given subreddit
    """
    URL = "https://www.reddit.com/r/{}/hot.json".format(subreddit)
    post_status = requests.get(URL, headers={'User-agent': 'my-bot'},
                               allow_redirects=False)

    if post_status.status_code == 200:
        posts = post_status.json().get('data').get('children')
        reader = 0
        for post in posts:
            if reader == 10:
                break
            print(post.get('data').get('title'))
            reader += 1
    else:
        print(None)
