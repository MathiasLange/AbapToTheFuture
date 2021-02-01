*"* use this source file for your ABAP unit test classes
CLASS ltcl_monster DEFINITION FINAL FOR TESTING
  DURATION SHORT
  RISK LEVEL HARMLESS.

  PRIVATE SECTION.
    METHODS:
      first_monster FOR TESTING RAISING cx_static_check.
ENDCLASS.


CLASS ltcl_monster IMPLEMENTATION.

  METHOD first_monster.
    cl_abap_unit_assert=>fail( 'Implement your first test here' ).
  ENDMETHOD.

ENDCLASS.
