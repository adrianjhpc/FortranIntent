        program test_intents

                use test_intent_routine

                implicit none

                integer :: input, output
                integer :: stat

                input = 10
                output = 0

                stat = test_intent_parameters_none(input, output)

                write(*,*) output

                input = 20
                output = 0

                stat = test_intent_parameters_correct(input, output)

                write(*,*) output

                input = 30
                output = 0

                stat = test_intent_parameters_permissive(input, output)

                write(*,*) output

                input = 10

                stat = test_intent_parameters_none(input, input)

                write(*,*) input

                input = 20

                stat = test_intent_parameters_correct(input, input)

                write(*,*) input

                input = 30

                stat = test_intent_parameters_permissive(input, input)

                write(*,*) input



        end program test_intents
