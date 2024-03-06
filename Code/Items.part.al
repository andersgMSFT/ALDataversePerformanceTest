page 50101 ItemsPart
{
    PageType = ListPart;
    ApplicationArea = All;
    SourceTable = Item;

    SourceTableView = WHERE("No." = filter('aaaaaa'));

    layout
    {
        area(content)
        {
            repeater(Items)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                }
                field("Description"; Rec."Description")
                {
                    ApplicationArea = All;
                }
                field("Unit Price"; Rec."Unit Price")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}
