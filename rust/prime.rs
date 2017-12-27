const MAX: u32 = 10_000_000;

fn count_primes() -> String {
    
    let mut n = 1;
    let mut i: u32 = 3;

    while i < MAX+1 {
        
        let mut is_prime = true;
        let ip: f32 = i as f32;
        let sqrti: u32 = ip.sqrt().floor() as u32;
        let mut j: u32 = 3;
        
        while j <= sqrti {
            if i % j == 0 {
                is_prime = false;
                break;
            }
            j += 2;
        }

        if is_prime == true {
            n += 1;
        }

        i += 2;

    }

    return format!("There are {} prime numbers between 0 and {}", n, MAX);
}

fn main() {
    
    println!("{}", count_primes());

}
