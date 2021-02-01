CLASS zcl_monster_unit_tests DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS:
      first_monster,
      second_monster.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_monster_unit_tests IMPLEMENTATION.
  METHOD first_monster.
    WRITE:/ 'I am the First Monster'.
  ENDMETHOD.

  METHOD second_monster.
    WRITE:/ 'I am the Second Monster'.
  ENDMETHOD.

ENDCLASS.
