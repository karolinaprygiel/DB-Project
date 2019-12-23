import random

VERBOSE = False


def file2list(filename):
    if type(filename) is str:
        return [line.strip() for line in open(filename, 'r')]


def generate(person_type):

    if person_type == 'e':
        # generate employees
        employee_names = file2list(
            'first_names_f_e.txt') + file2list('first_names_m_e.txt')
        last_names = file2list('last_names.txt')

        if VERBOSE:
            print('names:', employee_names)
        if VERBOSE:
            print('last names:', last_names)

        employees = [name + ' ' +
                     random.choice(last_names) for name in employee_names]
        if VERBOSE:
            print(employees)
        return employees


# test
print(generate('e'))