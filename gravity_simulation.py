# gravity_simulation.py
# Demonstrates functions and subroutines in Python

# Constants
G = 6.67430e-11  # Gravitational constant (m^3 kg^-1 s^-2)

# Function to compute gravitational force
def gravitational_force(m1, m2, r):
    return G * m1 * m2 / r**2

# Subroutine to print results
def print_results(m1, m2, r, force):
    print(f"Mass 1 (Sun): {m1} kg")
    print(f"Mass 2 (Earth): {m2} kg")
    print(f"Distance: {r} m")
    print(f"Gravitational Force: {force} N")

# Main program
if __name__ == "__main__":
    # Initialize masses and distance
    m1 = 1.989e30  # Mass of the Sun (kg)
    m2 = 5.972e24  # Mass of the Earth (kg)
    r = 1.496e11   # Distance between Sun and Earth (m)

    # Compute gravitational force
    force = gravitational_force(m1, m2, r)

    # Print the results
    print_results(m1, m2, r, force)