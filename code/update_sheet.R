source(file.path('code', 'setup.R'))

file_id = as_sheets_id(params$file_url)

d = read_sheet(file_id, params$sheet_name)

setDT(d)
d[, rando := rnorm(.N)]

write_sheet(d, file_id, params$sheet_name)

write_sheet(data.table(last_updated_utc = Sys.time()), file_id, 'status')
