let
    Source = Csv.Document(Web.Contents(HttpSource & "Sales.csv"),[Delimiter=",", Columns=15, Encoding=65001, QuoteStyle=QuoteStyle.None]),
    #"Promoted Headers" = Table.PromoteHeaders(Source, [PromoteAllScalars=true]),
    #"Changed Type" = Table.TransformColumnTypes(#"Promoted Headers",{{"SalesOrderLineKey", Int64.Type}, {"ResellerKey", Int64.Type}, {"CustomerKey", Int64.Type}, {"ProductKey", Int64.Type}, {"OrderDateKey", Int64.Type}, {"DueDateKey", Int64.Type}, {"ShipDateKey", Int64.Type}, {"SalesTerritoryKey", Int64.Type}, {"Order Quantity", Int64.Type}, {"Unit Price", Currency.Type}, {"Extended Amount", Currency.Type}, {"Product Standard Cost", Currency.Type}, {"Total Product Cost", Currency.Type}, {"Sales Amount", Currency.Type}, {"Unit Price Discount Pct", type number}})
in
    #"Changed Type"