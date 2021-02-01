*&---------------------------------------------------------------------*
*& Report zmla_monster_test_01
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zmla_monster_test_01.

CLASS lcl_laboratory DEFINITION.

  PUBLIC SECTION.
    METHODS:
      main,
      get_number_of_skulls RETURNING VALUE(r_result) TYPE i,
      set_number_of_skulls IMPORTING id_number_of_skulls TYPE i.

  PRIVATE SECTION.
    DATA: number_of_skulls  TYPE i.

    METHODS create_monster
      IMPORTING
        id_number_of_heads       TYPE i
      RETURNING
        VALUE(rd_monster_number) TYPE i.

ENDCLASS.

CLASS lcl_laboratory IMPLEMENTATION.

  METHOD main.
* Local variables
    DATA: monster_number  TYPE i,
          number_of_heads TYPE i.

    monster_number = create_monster(  id_number_of_heads = number_of_heads ).
  ENDMETHOD.

  METHOD create_monster.

  ENDMETHOD.

  METHOD get_number_of_skulls.
    r_result = me->number_of_skulls.
  ENDMETHOD.

  METHOD set_number_of_skulls.
    me->number_of_skulls = id_number_of_skulls.
  ENDMETHOD.

ENDCLASS.


CLASS lcl_monster DEFINITION.

  PUBLIC SECTION.
    METHODS constructor.
    METHODS main.

  PRIVATE SECTION.
    METHODS derive_monster_sanity
      IMPORTING
        i_monster_madness1 TYPE i.

ENDCLASS.

CLASS lcl_monster IMPLEMENTATION.

  METHOD constructor.

  ENDMETHOD.

  METHOD main.
* Local Variables
    DATA: monster_madness1 TYPE i,
          monster_madness2 TYPE i,
          monster_madness3 TYPE i,
          description1     TYPE string,
          description2     TYPE string,
          description3     TYPE string.

    monster_madness1 = 25.
    monster_madness2 = 50.
    monster_madness3 = 100.

    derive_monster_sanity( monster_madness1 ).

    IF monster_madness2 LT 30.
      description2 = 'FAIRLY SANE'.
    ELSEIF monster_madness2 GT 90.
      description2 = 'BONKERS'.
    ELSE.
      description2 = 'AVERAGE SANITY'.
    ENDIF.

    IF monster_madness3 LT 30.
      description3 = 'FAIRLY SANE'.
    ELSEIF monster_madness3 GT 90.
      description3 = 'BONKERS'.
    ELSE.
      description3 = 'AVERAGE SANITY'.
    ENDIF.

  ENDMETHOD.


  METHOD derive_monster_sanity.

    DATA description1 TYPE string.

* Derive Monster Sanity
    IF i_monster_madness1 LT 30.
      description1 = 'FAIRLY SANE'.
    ELSEIF i_monster_madness1 GT 90.
      description1 = 'BONKERS'.
    ELSE.
      description1 = 'AVERAGE SANITY'.
    ENDIF.

  ENDMETHOD.

ENDCLASS.
