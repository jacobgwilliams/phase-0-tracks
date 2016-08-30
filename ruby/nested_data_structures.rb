# Nested Data Structures

# A restaurant with multiple types of employees with multiple types of duties, supplies, uniforms

restaurant = {
  server: {
    supplies: [
      'Pens',
      'Paper',
      'A wad of cash'
    ],
    uniform: [
      'Button down shirt',
      'Black slacks',
      'Shined shoes'
    ],
    duties: {
      serve: [
        'Take orders',
        'Be polite',
        'Handle cash'
      ],
      closing_sidework: [
        'Polish silverware',
        'Mop floors'
      ],
    }
  },
  hostess: {
    supplies: [
      'A book to read',
      'A white board',
      'Dry erase markers'
      ],
    uniform: [
      'A fancy dress',
      'Makeup',
      'Name tag'
      ],
    duties: {
      greet: 'Greet guests warmly',
      seat: 'Take guests to their table',
    }
  },
  line_cook: {
    supplies: [
      'Spatula',
      'Deep fryer',
      'Knife'
      ],
    uniform: [
      'Hair net',
      'Non-slip shoes',
      'That chef outfit they always wear'
      ],
    duties: {
      cook: 'Cook all the food',
      yell: 'Yell at servers when they are annoying',
      clean: 'Clean all equipment when finished'
    }
  },
  manager: {
    supplies: [
      'Computer',
      'Phone',
      'Patience'
      ],
    uniform: [
      'Business casual shirt',
      'Slacks'
      ],
    duties: {
      payroll: 'Compute payroll for all employees',
      hire: 'Add employees to staff',
      fire: 'Delete employees from staff'
    }
  }
}

puts restaurant