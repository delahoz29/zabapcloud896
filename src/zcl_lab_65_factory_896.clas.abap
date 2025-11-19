CLASS zcl_lab_65_factory_896 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS create_file IMPORTING iv_file_type        TYPE string
                        RETURNING VALUE(ro_file_type) TYPE REF TO zif_lab_06_file_896.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_LAB_65_FACTORY_896 IMPLEMENTATION.


  METHOD create_file.
    CASE iv_file_type.
      WHEN 'Work'.
        ro_file_type = NEW zcl_lab_63_work_file_896( ).
      WHEN 'Supply'.
        ro_file_type = NEW zcl_lab_64_supply_file_896( ).
    ENDCASE.
  ENDMETHOD.
ENDCLASS.
