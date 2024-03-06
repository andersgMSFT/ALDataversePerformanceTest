page 50102 ExtraPerfItems
{
    PageType = API;
    Caption = 'ExtraPerfItems';

    APIPublisher = 'BusinessCentral';
    APIGroup = 'performance';
    APIVersion = 'beta';

    EntityName = 'ExtraPerfItem';
    EntitySetName = 'ExtraPerfItems';

    SourceTable = "Item";
    DelayedInsert = true;

    ODataKeyFields = SystemId;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(id; Rec.SystemId)
                {
                    Caption = 'System ID';
                }
                field(number; Rec."No.")
                {
                    Caption = 'Number';
                }
                field(DisplayName; Rec.Description)
                {
                    Caption = 'Display Name';
                }
                field(displayName2; Rec."Description 2")
                {
                    Caption = 'Display Name 2';
                }
                field(type; Rec.Type)
                {
                    Caption = 'Type';
                }
                field(itemCategoryId; Rec."Item Category Id")
                {
                    Caption = 'Item Category Id';
                }
                field(itemCategoryCode; Rec."Item Category Code")
                {
                    Caption = 'Item Category Code';
                }
                field(blocked; Rec.Blocked)
                {
                    Caption = 'Blocked';
                }
                field(gtin; Rec.GTIN)
                {
                    Caption = 'GTIN';
                }
                field(unitPrice; Rec."Unit Price")
                {
                    Caption = 'Unit Price';
                }
                field(priceIncludesTax; Rec."Price Includes VAT")
                {
                    Caption = 'Price Includes Tax';
                }
                field(unitCost; Rec."Unit Cost")
                {
                    Caption = 'Unit Cost';
                }
                field(taxGroupId; Rec."Tax Group Id")
                {
                    Caption = 'Tax Group Id';
                }
                field(taxGroupCode; Rec."Tax Group Code")
                {
                    Caption = 'Tax Group Code';
                }
                field(baseUnitOfMeasureId; Rec."Unit of Measure Id")
                {
                    Caption = 'Base Unit Of Measure Id';
                }
                field(baseUnitOfMeasureCode; Rec."Base Unit of Measure")
                {
                    Caption = 'Base Unit Of Measure Code';
                }
                field(generalProductPostingGroupId; Rec."Gen. Prod. Posting Group Id")
                {
                    Caption = 'General Product Posting Group Id';
                }
                field(generalProductPostingGroupCode; Rec."Gen. Prod. Posting Group")
                {
                    Caption = 'General Product Posting Group Code';
                }
                field(inventoryPostingGroupId; Rec."Inventory Posting Group Id")
                {
                    Caption = 'Inventory Posting Group Id';
                }
                field(inventoryPostingGroupCode; Rec."Inventory Posting Group")
                {
                    Caption = 'Inventory Posting Group Code';
                }
                field(lastModifiedDateTime; Rec.SystemModifiedAt)
                {
                    Caption = 'Last Modified Date';
                }
            }
        }
    }
    trigger OnFindRecord(Which: Text): Boolean
    begin
        testCounter += 1;
        exit(true);
    end;

    trigger OnNextRecord(Steps: Integer): Integer
    begin
        testCounter += 1;
    end;

    var
        testCounter: Integer;
}