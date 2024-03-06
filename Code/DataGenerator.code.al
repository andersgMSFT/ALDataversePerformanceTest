codeunit 50100 DataGenerator
{
    procedure GenerateItemsData()
    var
        i: Integer;
    begin
        numberOfItems := 100000;

        // Generate data
        for i := 1 to numberOfItems do begin
            AddItem('aaaaaaaaa' + Format(i), 'TestItem ' + Format(i), 'Description for item ', 'DESK', i);
        end;

    end;

    procedure DeleteItemsData()
    begin
        DeleteItem('aaaaaaaaa', 'aaaaaaaab');
    end;

    procedure DeleteItem(ItemNumberStart: Text; ItemNumberEnd: Text)
    var
        ItemRecord: Record Item;
        DeleteDemodataConfirmationQst: Label 'Are you sure you want to delete all sample data generated?';
    begin
        ItemRecord.SetRange("No.", ItemNumberStart, ItemNumberEnd);

        if not Confirm(DeleteDemodataConfirmationQst + '(' + Format(ItemRecord.Count) + ')') then
            exit;

        ItemRecord.DeleteAll(true);
    end;

    procedure AddItem(ItemNumber: Text; ItemName: Text; Description: Text; ItemCategory: Text; UnitPrice: Decimal);
    var
        ItemTempl: Record "Item Templ.";
        ItemRecord: Record Item;
        ItemTemplMgt: Codeunit "Item Templ. Mgt.";
        ItemCreated: Boolean;
        IsHandled: Boolean;
    begin
        // Create item with manual primary key
        ItemRecord.Init();
        ItemRecord.Validate("No.", ItemNumber);

        // Apply item template for physical items
        ItemTempl.SetFilter("Inventory Posting Group", '<>%1', '');
        ItemTempl.FindFirst();
        ItemCreated := ItemTemplMgt.CreateItemFromTemplate(ItemRecord, IsHandled, ItemTempl.Code);
        if not ItemCreated or not IsHandled then
            Error('', ItemTempl.Code);

        // Update the item information
        ItemRecord.Get(ItemNumber);
        ItemRecord.Validate(Description, ItemName);
        ItemRecord.Validate("Unit Price", UnitPrice);
        ItemRecord.Validate("Item Category Code", ItemCategory);
        ItemRecord.Modify(true);

    end;

    var
        numberOfItems: Integer;
}