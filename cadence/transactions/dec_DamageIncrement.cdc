import BackToTheFuture from 0x05

transaction {
    prepare(acct: AuthAccount) {

        let ref <- acct.load<@BackToTheFuture.State>(from: /storage/State)!     

        ref.dec_DamageInc()

        acct.save(<-ref, to: /storage/State)
    
    }

    execute{
        log("Damage Decreased!")
    }
}
