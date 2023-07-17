import BackToTheFuture from 0x02

transaction {
    prepare(acct: AuthAccount) {
            
        acct.save(<-BackToTheFuture.createState(name:"allen"), to: /storage/State)

        acct.link<&BackToTheFuture.State>(/public/Statepub, target: /storage/State)
        
    }
}
