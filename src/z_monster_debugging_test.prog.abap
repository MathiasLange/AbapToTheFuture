*&---------------------------------------------------------------------*
*& Report z_monster_debugging_test
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z_monster_debugging_test.

CLASS lcl_how_many_monsters DEFINITION.
  PUBLIC SECTION.
    METHODS how_many_make_five RETURNING VALUE(rd_how_many) TYPE i.
ENDCLASS. "How Many Monsters Definition

CLASS lcl_how_many_monsters IMPLEMENTATION.
  METHOD how_many_make_five.
    DO 100 TIMES.
      ADD 1 TO rd_how_many.
      IF rd_how_many = 5.
        RETURN.
      ENDIF.
    ENDDO.
  ENDMETHOD.
ENDCLASS. "How Many Monsters implementation

DATA: how_many           TYPE i,
      gd_flying_monsters TYPE i,
      counter            TYPE REF TO lcl_how_many_monsters.

START-OF-SELECTION.
*  CREATE OBJECT counter.
*  how_many = counter->how_many_make_five( ).
*  WRITE:/ how_many.

  DO 100 TIMES.

    SELECT COUNT( * )
      FROM sflight
      WHERE carrid = 'AA'.

    CHECK sy-subrc = 0.

    ADD 1 TO gd_flying_monsters.
    WRITE:/ gd_flying_monsters.

  ENDDO.
