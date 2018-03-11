use std::process::Command;

fn main() {
    let status = Command::new("bash")
        .arg("./build.sh")
        .arg("target/oxidation")
        .status()
        .expect("Failed to run build script");
    
    match status.code() {
        Some(code) => std::process::exit(code),
        None       => {}
    }
}
