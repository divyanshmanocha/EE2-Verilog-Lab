##Summary:

This exercise builds on exercise 17 by having multiple echoes rather than the single one seen earlier. This works by something similar to a recursive system with the output constantly being fed back to the FIFO as the new input to produce a new output and so on.

##Method:

As the flow graph highlights, rather than the input being added to the echo and released to the output, the output actually gets fed back into the system and is used to create a new echo which is actually subtracted from the inputrather than added. The differency compared to the single echo in terms of the code is largely in the delay module with the introduction of a register, and the anding of the output of the register and the pulse generated by pulse gen operating the reading cycle in the FIFO. 

The subtraction in this module as opposed to the add of the earlier experiment is to avoid any instability. If addition was used, the system will have positive feedback and become unstable.

##Results/Conclusions:

This works as expected with multiple echos being heard when listening to something with each new echo beimg hear gradually decreasing in volume in the background, representing how a real echo would work.