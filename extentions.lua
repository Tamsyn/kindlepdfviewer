-- List of acceptable extentions

ext = {
	djvuRead = ";djvu;",
	pdfRead  = ";pdf;xps;cbz;",
	creRead  = ";epub;txt;rtf;htm;html;mobi;prc;azw;fb2;chm;pdb;doc;tcr;zip;"
	-- seems to accept pdb-files for PalmDoc only
}

function ext:getReader(ftype)
	local s = ";"
	if ftype == "" then
		return nil
	elseif string.find(self.djvuRead,s..ftype..s) then
		return DJVUReader
	elseif string.find(self.pdfRead,s..ftype..s) then
		return PDFReader
	elseif string.find(self.creRead,s..ftype..s) then
		return CREReader
	else
		return nil
	end
end

