public aspect GrettingAspect {	
	long startTime;
	// Define a Pointcut is
    // collection of JoinPoint call sayHello of class HelloAspectJDemo.
    pointcut callGreeting(): call(* HelloAspectJDemo.greeting());
    
    before() : callGreeting() {
    	startTime = System.currentTimeMillis();
    } 
    after() : callGreeting() {
    	long estimatedTime = System.currentTimeMillis() - startTime;
    	System.out.println("Tiempo de uso: "+String.valueOf(estimatedTime)+" milisegundos");
    }
}  