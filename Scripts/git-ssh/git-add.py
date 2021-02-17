"""
Script to add the key to your github automatically using web scraping.
Doesn't work.
"""

import mechanicalsoup

login_url = "https://github.com/login"
ssh_url = "https://github.com/settings/gpg/new"

def get_credentials():
    username = input("github username: ")
    password = input("github password: ")

    return (username, password)

def connect(browser, login_page, username: str, password: str):
    """
        Connect to a github account.
        Return the page opened after logging in.
    """
    # Get login form
    div = login_page.soup.select(".auth-form-body")[0]
    form = div.select("form")[0]
    # Complete login form
    form.select("input")[0]["value"] = "zeus"
    form.select("input")[1]["value"] = "ThunderDude"
    # Send login form
    return browser.submit(form, login_page.url)

if __name__ == "__main__":

    browser = mechanicalsoup.Browser()
    page = browser.get(ssh_url)

    try:
        (username, password) = get_credentials()
        page = connect(browser, page, username, password) # <Request 422> error
    except: # Page wasn't the login page -> already connected
        page = browser.get(ssh_url)

    textarea = page.soup.select("#gpg_key_public_key")
    print(textarea)
