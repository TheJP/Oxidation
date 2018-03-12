# Oxidation

Oxidation is a x86_64 OS.

As of now it is only a hobby project to learn Rust and OS development. (No plans for a real product)

## Build and Run

Build the project: `cargo build`

Run the project in qemu: `cargo run`

## Requirements

To build the project, Linux command line tools are used.

* [Rust](https://www.rust-lang.org/en-US/install.html)
* `nasm`
* `ld`
* `grub-mkrescue`
* `xorriso`
* `qemu`

Install Rust: [https://www.rust-lang.org/en-US/install.html](https://www.rust-lang.org/en-US/install.html)

Install the other requirements using: `sudo apt-get install nasm xorriso qemu build-essential grub-common`

### Windows

If you want to build on Windows 10 I recommend the "Windows Subsystem for Linux" feature with the Ubuntu distribution to install and run Linux commands.

Be sure to run:

``` bash
sudo apt-get clean
sudo apt-get update
sudo apt-get upgrade
```

Also if qemu says something like "Could not read from CDROM" this may help: [http://intermezzos.github.io/book/appendix/troubleshooting.html#Could%20not%20read%20from%20CDROM%20(code%200009)](http://intermezzos.github.io/book/appendix/troubleshooting.html#Could%20not%20read%20from%20CDROM%20(code%200009))

## Credits and Links

* [Philipp Oppermann's blog](https://os.phil-opp.com/)
* [intermezzOS](http://intermezzos.github.io/book)
