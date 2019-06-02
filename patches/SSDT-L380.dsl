// Lenovo L380 Master SSDT

DefinitionBlock("", "SSDT", 2, "L380", "_L380", 0)
{
    #define NO_DEFINITIONBLOCK
    #include "SSDT-EC.dsl"
    #include "SSDT-GPRW.dsl"
    #include "SSDT-PTS.dsl"
    #include "SSDT-UIAC.dsl"
    #include "SSDT-USBX.dsl"
    #include "SSDT-XOSI.dsl"
}
