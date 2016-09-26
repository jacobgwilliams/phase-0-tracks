# Web Servers
## Jacob Williams

## What are some of the key design philosophies of the Linux operating system?
It seems to me like the key philosophies behind Linux are, first and foremost, that the user is a computer literate person who is willing to make mistakes on the way to making interesting and unique discoveries. Underneath that rather large and widesweeping philosophy are a few other ideas:
* The option of more versatile virtual terminals and GUIs that allow for a user to choose how they interact with their machine based on their needs
* No hand-holding. Linux is not in the habit of asking of asking "Are you sure?" questions when executing commands. This is in line with the philosophy that the user knwos that they are doing and are ready to make mistakes if need be. I find this kind of idea to be similar to the concepts of short-hand or cursive-writing (which they used to teach in schools but don't anymore): If you decide you want to do or write something, you don't want to be frustrated with time-consuming safety checks, you just want to be able to write.
* Treat all users with respect. Linux (and Unix) offer a wide array of tools for users, making "flexibility, simplicity, and freedom the foremost considerations when designing or using software systems."
[source](https://opensource.com/business/14/12/linux-philosophy)

## In your own words, what is a VPS (virtual private server)? What, according to your research, are the advantages of using a VPS?
A VPS is a simulated computer. It's made by software that alots a certain amount of space to operate as though it were an in-house server located on a literal, physical machine, except it operates from another Internet hosting service. The advantages to using a VPS are that it is
1) Affordable
2) Easy to set up
3) Easy to break but also start over, therefore:
4) Doesn't have the risks entailed in breaking or causing damage to an in-house server
(Source: Google, duh)

## Why is it considered a bad idea to run programs as the root user on a Linux system?
While Linux is valued for it's assumption that the user wants more control, the reason that there is a seperation of "administrative" users and other users are simply for security. The possibilities for security lapses or bug-induced problems are multiplied by, like, a lot when you run from the root user at all times. This doesn't affect a lot of developers which is why it is an idea that's commonly argued against, but it's better to be safe than sorry. Like using GIT workflow, you might find that it isn't crucial for you to use it depending on what you're working on, but if you are still learning and could break your code somehow, better to keep track of your work.

[source: AskUbuntu.com](http://askubuntu.com/questions/16178/why-is-it-bad-to-login-as-root)