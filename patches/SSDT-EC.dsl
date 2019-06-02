
// SSDT-EC.dsl
//
// Injects a fake EC device
//
// Formatting credits: RehabMan - https://github.com/RehabMan/Intel-NUC-DSDT-Patch/blob/master/SSDT-EC.dsl
//

DefinitionBlock ("", "SSDT", 2, "hack", "_EC", 0)
{
    // Inject Fake EC device
    Device(_SB.EC)
    {
        Name(_HID, "EC000000")
    }
}
