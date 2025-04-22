use dep::eddsa::verify;

fn main(x: u32, y: pub u32) {
    let result = x + y;
    println(result);
    assert(result >= 0)
}
// Imports para EdDSA o el esquema de firma que uses

fn main(
    pub msg_hash: Field,
    pub authorized_keys: [PubKey; N],
    pub threshold: u32,
    signatures: [Signature; MAX],
    signer_keys: [PubKey; MAX]
) {
    let mut valid_count = 0;

    for i in 0..MAX {
        // Verify the signatur
        let sig_ok = verify_signature(signer_keys[i], msg_hash, signatures[i]);

        // Verify that the key is on the list
        let is_authorized = is_in_list(signer_keys[i], authorized_keys);

        // Count if both ocnditions are satisfied
        if sig_ok && is_authorized {
            valid_count += 1;
        }
    }

    assert(valid_count >= threshold);
}

#[test]
fn test_main() { 
    main(0,0);
}