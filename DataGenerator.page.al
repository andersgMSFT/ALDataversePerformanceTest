page 50100 DataGenerator
{
    PageType = Document;
    ApplicationArea = All;
    UsageCategory = Administration;

    layout
    {
        area(Content)
        {
            label(Description)
            {
                Caption = 'Demo Data Generator';
                ApplicationArea = All;
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(GenerateData)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}