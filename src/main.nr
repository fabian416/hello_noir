fn main(x: u32, y: pub u32) {
    let result = x + y;
    println(result);
    assert(result >= 0)
}

#[test]
fn test_main() { 
    main(0,0);
}