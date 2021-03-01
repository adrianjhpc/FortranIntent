        module test_intent_routine

                implicit none


                public :: test_intent_parameters_none, &
                          test_intent_parameters_correct, &
                          test_intent_parameters_permissive

                contains

                function test_intent_parameters_none(input, output)
                        integer :: input, output
                        integer :: test_intent_parameters_none

                        output = input + 15

                        test_intent_parameters_none = 0

                end function test_intent_parameters_none

                function test_intent_parameters_correct(input, output)
                        integer, intent(in) :: input
                        integer, intent(out) :: output
                        integer :: test_intent_parameters_correct                     
                        output = input + 15

                        test_intent_parameters_correct = 0

                end function test_intent_parameters_correct


                function test_intent_parameters_permissive(input, output)
                        integer, intent(inout) :: input, output
                        integer :: test_intent_parameters_permissive

                        output = input + 15

                        test_intent_parameters_permissive = 0

                end function test_intent_parameters_permissive

        end module test_intent_routine
