tableextension 123456700 "CSD ResourceExt" extends Resource
// CSD1.00 - 2018-01-01 - D. E. Veloper
{
    fields
    {
        modify("Profit %")
        {
            trigger OnAfterValidate();

            begin
                rec.TestField("Unit Cost");
            end;
        }
        field(123456701; "CSD Resource Type"; Option)
        {
            Caption = 'Resource Type';
            OptionMembers = "Internal", "External";
            OptionCaption = 'Internal,External';
        }
        field(123456702; "CSD Maximum Participants"; Integer)
        {
            Caption = 'CSD Maximum Participants';
        }
        field(123456703; "CSD Quantity Per Day"; Decimal)
        {
            Caption = 'CSD Quantity Per Day';
        }
    }
 }