# Order Management System

The quickfix server spits out FIX messages to the RabbitMQ queue that will be consumed
by the matching engine, the matching engine orders will then be sent to another RabbitMQ 
queue to be processed and sent to the QuickFAST server. 

Copyright 2018, Dendi Suhubdy
