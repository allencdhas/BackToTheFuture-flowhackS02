

import BackToTheFuture from 0x05

pub fun main(acct: Address): Int{

        let state = getAccount(acct).getCapability(/public/Statepub)   
                        .borrow<&BackToTheFuture.State>()
                        ?? panic ("we couldnt get state")

        return state.lessDamageFromEnemy

}