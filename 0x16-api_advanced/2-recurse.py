#!/usr/bin/python3
""""
Recursive function that queries Reddit API
"""
import requests


def recurse(subreddit, hot_list=[], after=None):
    """
    Recursive function that queries Reddit API and return a list of
    all hot articles of a given subreddit,if no result found: None
    """
    after = str(after)
    url = "https://www.reddit.com/r/" + subreddit + "/hot.json?after=" + after
    headers = {'User-Agent': 'Mozilla/5.0 (Windows; U; Windows)'}
    data = requests.get(url, headers=headers, allow_redirects=False)

    if data.status_code == 200:
        posts = data.json()['data']['children']
        for hot in posts:
            hot_list.append((hot['data']['title']))
        after = data.json()['data']['after']
        if after:
            return recurse(subreddit, hot_list, after)
        else:
            return hot_list
    else:
        return None
