use std::process::Command;

fn main() {
    let status = Command::new("qemu-system-x86_64")
        .arg("-cdrom").arg("target/oxidation/oxidation.iso")
        .status()
        .expect("Failed to run Oxidation");

    match status.code() {
        Some(code) => std::process::exit(code),
        None       => {}
    }
}
