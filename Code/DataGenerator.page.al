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
            part(ItemsPart; ItemsPart)
            {
                ApplicationArea = All;

            }
        }
    }

    actions
    {
        area(Promoted)
        {
            actionref(PromotedGenerateItemsData; GenerateItemsData)
            {
            }
            actionref(PromotedDeleteItemsData; DeleteItemsData)
            {
            }
        }

        area(Processing)
        {
            action(GenerateItemsData)
            {
                ApplicationArea = All;

                trigger OnAction()
                var
                    ItemDataGenerator: Codeunit "DataGenerator";
                begin
                    ItemDataGenerator.GenerateItemsData();
                end;
            }
            action(DeleteItemsData)
            {
                ApplicationArea = All;

                trigger OnAction()
                var
                    ItemDataGenerator: Codeunit "DataGenerator";
                begin
                    ItemDataGenerator.DeleteItemsData();
                end;
            }
        }
    }

    var
        myInt: Integer;
}