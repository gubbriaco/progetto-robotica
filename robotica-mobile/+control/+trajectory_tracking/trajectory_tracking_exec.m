function [evolutionAL, evolutionNL, evolutionFL] = trajectory_tracking_exec(Ts, samples, X0,...
                                                                            xstar, ystar,...
                                                                            xdstar, ydstar, ...
                                                                            xddstar, yddstar,...
                                                                            thetastar)
                              
                              
    import control.trajectory_tracking.approximated_linearization.linear_control_exec;
    import control.trajectory_tracking.non_linearization.non_linear_control_exec;
    import control.trajectory_tracking.input_output_control.input_output_control_exec;
    evolutionAL = linear_control_exec(Ts, samples, X0, xstar, ystar, xdstar, ydstar, ...
                                      xddstar, yddstar, thetastar);
    evolutionNL = non_linear_control_exec(Ts, samples, X0, xstar, ystar, xdstar, ydstar, ...
                                          xddstar, yddstar, thetastar);
    evolutionFL = input_output_control_exec(Ts, samples, X0, xstar, ystar, xdstar, ydstar, ...
                                            xddstar, yddstar, thetastar);
   
                                        
    import control.trajectory_tracking.trajectory_tracking_plot;                       
    trajectory_tracking_plot(environment, evolutionAL, evolutionNL, evolutionFL);                                
         
    

end