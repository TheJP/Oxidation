# Oxidation

To build the project, Linux command line tools are used.

## Windows

If you want to build on Windows 10 I recommend the "Windows Subsystem for Linux" feature with the Ubuntu distribution to install and run Linux commands.

Be sure to run:

``` bash
sudo apt-get clean
sudo apt-get update
sudo apt-get upgrade
```

## Build and Run

Build the project: `cargo build`

Run the project in qemu: `cargo run`

### Requirements

* [Rust](https://www.rust-lang.org/en-US/install.html)
* `nasm`
* `ld`
* `grub-mkrescue`
* `xorriso`
* `qemu`

Install Rust: [https://www.rust-lang.org/en-US/install.html](https://www.rust-lang.org/en-US/install.html)

Install the other requirements using: `sudo apt-get install nasm xorriso qemu build-essential`

## Credits and Links

* [Philipp Oppermann's blog](https://os.phil-opp.com/)
* [intermezzOS](http://intermezzos.github.io/book)
