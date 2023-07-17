

import BackToTheFuture from 0x05

transaction {
    prepare(acct: AuthAccount) {

        let ref <- acct.load<@BackToTheFuture.State>(from: /storage/State)!     

        ref.inc_HeroSpeedInc()

        acct.save(<-ref, to: /storage/State)
    
    }

    execute{
        log("Hero Speed point Inc!")
    }
}
