1) What are some of the key design philosophies of the Linux operating system?

    The Linux philosophy is based around the idea that the user actually knows what they're doing. There's a great quote I encountered about Linux/Unix, attributed to Doug Gwyn:
      "Unix was not designed to stop its users from doing stupid things, as that would also stop them from doing clever things."
    On a more specific perspective, here is the 9 major tenets of the Linux philosophy:

      -Small is Beautiful
      -Each Program Does One Thing Well
      -Prototype as Soon as Possible
      -Choose Portability Over Efficiency
      -Store Data in Flat Text Files
      -Use Software Leverage
      -Use Shell Scripts to Increase Leverage and Portability
      -Avoid Captive User Interfaces
      -Make Every Program a Filter

      Linux is a hacker designed system, and strongly follows an open-source philosophy.

2) In your own words, what is a VPS (virtual private server)? What, according to your research, are the advantages of using a VPS?
  VPS - Virtual Private Server
  A VPS allows your website to be the only website/program that exists within that specific virtual space. Therefore, you're websites' performance does not suffer from other websites being hosted on the same system. VPS hosting also gives you complete control over your server, and has similar benefits to the more expensive dedicated server option.


Optional bonus question: Why is it considered a bad idea to run programs as the root user on a Linux system?

  This is mainly a security issue - if you logged in as the root user, then any malicious or buggy program could rewrite your entire system, rather than just the home folder. You also don't need to be logged in as the root user for most cases, except for administrative work.

  Also, there's only one root account. If everything uses the root account, it's difficult to determine who did what.