Any time we do anything on the Internet, there is some risk to having
our information maliciously hacked. This is no different when using
GitHub, so if we can, we should try to be more secure with what we send
across the internet. In fact, most functions that relate to Git or using
GitHub *require* using more secure features in order to work.
`{usethis}` makes this much easier, thankfully, with several functions.
The `{usethis}` website has a really [well written
guide](https://usethis.r-lib.org/articles/articles/git-credentials.html)
on setting it up. Here is a very simplified version of what they
recommend that is relevant for what we are doing in this course.

-   Use personal access tokens (PAT, or simply called a "token") when
    interacting with your GitHub remote repositories while outside of
    the GitHub website (e.g. when using R or `{usethis}`). PAT's are
    like temporary passwords that provide limited access to your GitHub
    account, like being able to read or write to your GitHub
    repositories, but not being able to delete them. They are useful
    because you can easily delete the PAT if you feel someone got access
    to it and prevent it from being used, unlike your own password which
    you would have to manually change if it was stolen.

-   Use a password manager to save the PAT for later use. Using password
    managers is basically a requirement for having secure online
    accounts, because they can generate random and long passwords that
    you don't have to remember.

-   Use packages like `{gitcreds}` to give `{usethis}` access to the PAT
    and to interact with your GitHub repositories. You normally would
    use `{gitcreds}` every time you restart your computer or after a
    certain period of time.

::: {.callout-note appearance="default"}
## What is a password manager?

A password manager is an app or web service that let's you save or
create passwords for all your accounts, like banking or social media.
Instead of having to remember multiple passwords used across multiple
accounts, or the very insecure approach of one or two passwords for all
your accounts, you instead need to remember only one very secure
password that contains all your other very secure passwords. Google
"password manager" and your operating system (Windows, MacOS) to find
possible ones to install or use.

[Bitwarden](https://bitwarden.com/) is a very good password manager that
is easy to use and the free version has everything you need to manage,
store, and create passwords.
:::

You very likely haven't set up a PAT, but if you are uncertain, you can
always check with:

``` {.r filename="Console"}
usethis::gh_token_help()
```

```         
• GitHub host: 'https://github.com'
• Personal access token for 'https://github.com': <unset>
• To create a personal access token, call `create_github_token()`
• To store a token for current and future use, call `gitcreds::gitcreds_set()`
ℹ Read more in the 'Managing Git(Hub) Credentials' article:
  https://usethis.r-lib.org/articles/articles/git-credentials.html
```

If the output says that the token is `<unset>` like the above text does,
that means we need to make Git and `{usethis}` aware of the token. We do
that by typing the next function in the Console to create the token on
GitHub (if you haven't created one already).

``` {.r filename="Console"}
usethis::create_github_token()
```

This function sends us to the GitHub "Generate new token" webpage with
all the necessary settings checked. Set the "Expiry date" to 90 days
(this is a good security feature). Then, click the green button at the
bottom called "Generate token" and you'll have a very long string
generated for you that starts with `ghp_`. **Save this token in your
password manager** (see note above). This is the token you will use
every time you open up RStudio and interact with GitHub through R. You
do **not** need to create a new token for each R project or package you
make, you only need to create one after your current token expires
(typically every couple of months), if you've forgotten the token or
lost it, or if you've changed to a new computer.

In the Console, run:

``` {.r filename="Console"}
gitcreds::gitcreds_set()
```

And then copy and paste your token into the prompt in the Console. This
token usually gets saved for the day (it gets cached), but after
restarting your computer, you will need to run the action again. If it
asks to replace an existing one, select the "yes" option. Doing this is
a bit like using the two-factor authentication (2FA) you often have to
do when, for instance, accessing your online bank account or other
government website. In this case, you are telling GitHub (when
interacting to it through RStudio, like uploading and downloading your
changes) that you are who you claim to digitally be.

::: {.callout-tip appearance="default"}
There is another great helper function that runs a lot of checks and
gives some advice when it finds potential problems.

``` {.r filename="Console"}
usethis::git_sitrep()
```

Just to be aware, using this function outputs a *lot* of stuff, most of
which you probably don't even need to know or don't even know what it
means. That's ok, since it is meant as a diagnostic tool.
:::
