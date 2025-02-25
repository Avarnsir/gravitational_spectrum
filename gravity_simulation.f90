!gravity_simulation

program gravity_simulation
    implicit none
    
    !declare Variables
    real :: m1, m2, r, force
    real, parameter :: G = 6.674e-11

    !Initialize Variables
    m1 = 1.989e30
    m2 = 5.972e24
    r = 1.496e11

    !Compute gravitational force
    force = gravitational_force(m1, m2, r)

    !Print result
    call print_result(m1, m2, r, force)

contains
    
    !Function to compute gravitational force
    function gravitational_force(m1, m2, r) result(force)
        real, intent(in) :: m1, m2, r
        real :: force
        force = G * m1 * m2 / r**2
    end function gravitational_force

    !Subroutine to print result
    Subroutine print_result(m1, m2, r, force)
        real, intent(in) :: m1, m2, r, force

        print *, 'Mass of the Sun', m1, 'kg'
        print *, 'Mass of the Earth', m2, 'kg'
        print *, 'Distance', r, 'm'
        print *, 'Gravitational force = ', force, 'N'
    end Subroutine print_result

end program gravity_simulation
