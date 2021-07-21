
"""Week I Assignment
Simulate the trajectory of a robot approximated using a unicycle model given the
following start states, dt, velocity commands and timesteps
State = (x, y, theta);
Velocity = (v, w) 
1. Start=(0, 0, 0); dt=0.1; vel=(1, 0.5); timesteps: 25
2. Start=(0, 0, 1.57); dt=0.2; vel=(0.5, 1); timesteps: 10
3. Start(0, 0, 0.77); dt=0.05; vel=(5, 4); timestep: 50
Upload the completed python file and the figures of the three sub parts in classroom
"""
import numpy as np
import matplotlib.pyplot as plt

class Unicycle:
    def __init__(self, x: float, y: float, theta: float, dt: float):
        self.x = x
        self.y = y
        self.theta = theta
        self.dt = dt

        # Store the points of the trajectory to plot
        self.x_points = [self.x]
        self.y_points = [self.y]

    def step(self, v: float, w: float, n: int):
        """
        Write the Kinematics model here
        Expectation:
            1. Given v, w and the current state self.x, self.y, self.theta
                and control commands (v, w) for n timesteps, i.e. n * dt seconds,
                return the final pose (x, y, theta) after this time.
            2. Append all intermediate points into the self.x_points, self.y_points list
                for plotting the trajectory.
        Args:
            v (float): linear velocity
            w (float): angular velocity
            n (int)  : timesteps
        Return:
            x, y, theta (float): final pose 
        """
        self.w=w
        self.v=v
        self.n=n
        for i in range(1,n+1):
            t=i*(self.dt)
            #dx=vcos(wt+self.theta)dt
            x=(v/w)*(np.sin(w*t+self.theta))-(v/w)*(np.sin(self.theta))
            y=(v/w)*(np.cos(self.theta))-(v/w)*(np.cos(w*t+self.theta))
            self.x_points.append(x)
            self.y_points.append(y)
        theta=self.theta+w*(self.dt)*n
        return x, y, theta

    def plot(self, v: float, w: float):
        """Function that plots the intermeditate trajectory of the Robot"""
        plt.title(f"Unicycle Model: {v}, {w}")
        plt.xlabel("X-Coordinates")
        plt.ylabel("Y-Coordinates")
        plt.plot(self.x_points, self.y_points, color="red", alpha=0.75)
        plt.grid()

        # If you want to view the plot uncomment plt.show() and comment out plt.savefig()
        plt.show()
        # If you want to save the file, uncomment plt.savefig() and comment out plt.show()
        # plt.savefig(f"Unicycle_{v}_{w}.png")

if __name__ == "__main__":
    print("Unicycle Model Assignment")
    x1=Unicycle(0,0,0,0.1)
    x1.step(1,0.5,25)
    x2=Unicycle(0,0,1.57,0.2)
    x2.step(0.5,1,10)
    x3=Unicycle(0,0,0.77,0.05)
    x3.step(5,4,50)
    x1.plot(1,0.5)
    x2.plot(0.5,1)
    x3.plot(5,4)

    # make an object of the robot and plot various trajectories
