CLASS zcl_lab_06_elements_896 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    TYPES: BEGIN OF ty_elem_objects
             ,class     TYPE string
             ,instance  TYPE string
             ,reference TYPE string
             ,
            END OF ty_elem_objects.

    DATA ms_object TYPE ty_elem_objects.

    METHODS set_object IMPORTING iv_class     TYPE ty_elem_objects-class
                                 iv_instance  TYPE ty_elem_objects-instance
                                 iv_reference TYPE ty_elem_objects-reference.

    CONSTANTS: BEGIN OF cs_valores,
              c_uno    TYPE string VALUE 'Uno'
             ,c_dos    TYPE string VALUE 'Dos'
             ,c_tres   TYPE string VALUE 'Tres'
             ,c_cuatro TYPE string VALUE 'Cuatro'
             ,
           END OF cs_valores.


  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_06_elements_896 IMPLEMENTATION.
  METHOD set_object.
    ms_object-class = iv_class.
    ms_object-instance = iv_instance.
    ms_object-reference = iv_reference.

  ENDMETHOD.

ENDCLASS.
