pageextension 123456700 "ResourceCardExt" extends "Resource Card"
// CSD1.00 - 2018-02-01 - D. E. Veloper
{
    layout
    {
        addlast(General)
        {
            field("CSD Resource Type"; "CSD Resource Type")
            {

            }
            field("CSD Quantity Per Day"; "CSD Quantity Per Day")
            {

            }

        }
        addafter("Personal Data")
        {
            group("Room")
            {
                field("CSD Maximum Participants"; "CSD Maximum Participants")
                {
                    Visible = showMaxField;
                }
            }
        }
    }
    actions
    {
        // Add changes to page actions here
    }
    trigger OnAfterGetRecord();

    begin
        showMaxField := (Type = type::Machine);
        CurrPage.Update(false);
    end;

    var
        [InDataSet]
        showMaxField: Boolean;


}