

import BackToTheFuture from 0x05

transaction {
    prepare(acct: AuthAccount) {

        let ref <- acct.load<@BackToTheFuture.State>(from: /storage/State)!     

        ref.dec_PlutoEnemy()

        acct.save(<-ref, to: /storage/State)
    
    }

    execute{
        log("Puto from enemy Inccreased!")
    }
}
