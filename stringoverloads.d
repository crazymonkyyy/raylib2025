import std;
import raylib;
//void InitWindow(int width, int height, const(char)* title); // Initialize window and OpenGL context
//InitWindow["int width", "int height", "const(char)* title"]
auto InitWindow(STRING:string)(int width,int height,STRING title,)=>raylib.InitWindow( width, height, title.toStringz,);
//void SetWindowTitle(const(char)* title); // Set title for window
//SetWindowTitle["const(char)* title"]
auto SetWindowTitle(STRING:string)(STRING title,)=>raylib.SetWindowTitle( title.toStringz,);
//const(char)* GetMonitorName(int monitor); // Get the human-readable, UTF-8 encoded name of the specified monitor
//GetMonitorName["int monitor"]
auto GetMonitorName(STRING:string)(int monitor,)=>raylib.GetMonitorName( monitor,);
//void SetClipboardText(const(char)* text); // Set clipboard text content
//SetClipboardText["const(char)* text"]
auto SetClipboardText(STRING:string)(STRING text,)=>raylib.SetClipboardText( text.toStringz,);
//const(char)* GetClipboardText(); // Get clipboard text content
//GetClipboardText[]
auto GetClipboardText(STRING:string)()=>raylib.GetClipboardText();
//Shader LoadShader(const(char)* vsFileName, const(char)* fsFileName); // Load shader from files and bind default locations
//LoadShader["const(char)* vsFileName", "const(char)* fsFileName"]
auto LoadShader(STRING:string)(STRING vsFileName,STRING fsFileName,)=>raylib.LoadShader( vsFileName.toStringz, fsFileName.toStringz,);
//Shader LoadShaderFromMemory(const(char)* vsCode, const(char)* fsCode); // Load shader from code strings and bind default locations
//LoadShaderFromMemory["const(char)* vsCode", "const(char)* fsCode"]
auto LoadShaderFromMemory(STRING:string)(STRING vsCode,STRING fsCode,)=>raylib.LoadShaderFromMemory( vsCode.toStringz, fsCode.toStringz,);
//int GetShaderLocation(Shader shader, const(char)* uniformName); // Get shader uniform location
//GetShaderLocation["Shader shader", "const(char)* uniformName"]
auto GetShaderLocation(STRING:string)(Shader shader,STRING uniformName,)=>raylib.GetShaderLocation( shader, uniformName.toStringz,);
//int GetShaderLocationAttrib(Shader shader, const(char)* attribName); // Get shader attribute location
//GetShaderLocationAttrib["Shader shader", "const(char)* attribName"]
auto GetShaderLocationAttrib(STRING:string)(Shader shader,STRING attribName,)=>raylib.GetShaderLocationAttrib( shader, attribName.toStringz,);
//void TakeScreenshot(const(char)* fileName); // Takes a screenshot of current screen (filename extension defines format)
//TakeScreenshot["const(char)* fileName"]
auto TakeScreenshot(STRING:string)(STRING fileName,)=>raylib.TakeScreenshot( fileName.toStringz,);
//void OpenURL(const(char)* url); // Open URL with default system browser (if available)
//OpenURL["const(char)* url"]
auto OpenURL(STRING:string)(STRING url,)=>raylib.OpenURL( url.toStringz,);
//void TraceLog(int logLevel, const(char)* text, ...); // Show trace log messages (LOG_DEBUG, LOG_INFO, LOG_WARNING, LOG_ERROR...)
//TraceLog["int logLevel", "const(char)* text", "..."]
auto TraceLog(STRING:string)(int logLevel,STRING text,)=>raylib.TraceLog( logLevel, text.toStringz,);
//ubyte* LoadFileData(const(char)* fileName, int* dataSize); // Load file data as byte array (read)
//LoadFileData["const(char)* fileName", "int* dataSize"]
auto LoadFileData(STRING:string)(STRING fileName,int* dataSize,)=>raylib.LoadFileData( fileName.toStringz, dataSize,);
//bool SaveFileData(const(char)* fileName, void* data, int dataSize); // Save data to file from byte array (write), returns true on success
//SaveFileData["const(char)* fileName", "void* data", "int dataSize"]
auto SaveFileData(STRING:string)(STRING fileName,void* data,int dataSize,)=>raylib.SaveFileData( fileName.toStringz, data, dataSize,);
//bool ExportDataAsCode(const(ubyte)* data, int dataSize, const(char)* fileName); // Export data to code (.h), returns true on success
//ExportDataAsCode["const(ubyte)* data", "int dataSize", "const(char)* fileName"]
auto ExportDataAsCode(STRING:string)(const(ubyte)* data,int dataSize,STRING fileName,)=>raylib.ExportDataAsCode( data, dataSize, fileName.toStringz,);
//char* LoadFileText(const(char)* fileName); // Load text data from file (read), returns a '\0' terminated string
//LoadFileText["const(char)* fileName"]
auto LoadFileText(STRING:string)(STRING fileName,)=>raylib.LoadFileText( fileName.toStringz,);
//bool SaveFileText(const(char)* fileName, char* text); // Save text data to file (write), string must be '\0' terminated, returns true on success
//SaveFileText["const(char)* fileName", "char* text"]
auto SaveFileText(STRING:string)(STRING fileName,char* text,)=>raylib.SaveFileText( fileName.toStringz, text,);
//bool FileExists(const(char)* fileName); // Check if file exists
//FileExists["const(char)* fileName"]
auto FileExists(STRING:string)(STRING fileName,)=>raylib.FileExists( fileName.toStringz,);
//bool DirectoryExists(const(char)* dirPath); // Check if a directory path exists
//DirectoryExists["const(char)* dirPath"]
auto DirectoryExists(STRING:string)(STRING dirPath,)=>raylib.DirectoryExists( dirPath.toStringz,);
//bool IsFileExtension(const(char)* fileName, const(char)* ext); // Check file extension (including point: .png, .wav)
//IsFileExtension["const(char)* fileName", "const(char)* ext"]
auto IsFileExtension(STRING:string)(STRING fileName,STRING ext,)=>raylib.IsFileExtension( fileName.toStringz, ext.toStringz,);
//int GetFileLength(const(char)* fileName); // Get file length in bytes (NOTE: GetFileSize() conflicts with windows.h)
//GetFileLength["const(char)* fileName"]
auto GetFileLength(STRING:string)(STRING fileName,)=>raylib.GetFileLength( fileName.toStringz,);
//const(char)* GetFileExtension(const(char)* fileName); // Get pointer to extension for a filename string (includes dot: '.png')
//GetFileExtension["const(char)* fileName"]
auto GetFileExtension(STRING:string)(STRING fileName,)=>raylib.GetFileExtension( fileName.toStringz,);
//const(char)* GetFileName(const(char)* filePath); // Get pointer to filename for a path string
//GetFileName["const(char)* filePath"]
auto GetFileName(STRING:string)(STRING filePath,)=>raylib.GetFileName( filePath.toStringz,);
//const(char)* GetFileNameWithoutExt(const(char)* filePath); // Get filename string without extension (uses static string)
//GetFileNameWithoutExt["const(char)* filePath"]
auto GetFileNameWithoutExt(STRING:string)(STRING filePath,)=>raylib.GetFileNameWithoutExt( filePath.toStringz,);
//const(char)* GetDirectoryPath(const(char)* filePath); // Get full path for a given fileName with path (uses static string)
//GetDirectoryPath["const(char)* filePath"]
auto GetDirectoryPath(STRING:string)(STRING filePath,)=>raylib.GetDirectoryPath( filePath.toStringz,);
//const(char)* GetPrevDirectoryPath(const(char)* dirPath); // Get previous directory path for a given path (uses static string)
//GetPrevDirectoryPath["const(char)* dirPath"]
auto GetPrevDirectoryPath(STRING:string)(STRING dirPath,)=>raylib.GetPrevDirectoryPath( dirPath.toStringz,);
//const(char)* GetWorkingDirectory(); // Get current working directory (uses static string)
//GetWorkingDirectory[]
auto GetWorkingDirectory(STRING:string)()=>raylib.GetWorkingDirectory();
//const(char)* GetApplicationDirectory(); // Get the directory of the running application (uses static string)
//GetApplicationDirectory[]
auto GetApplicationDirectory(STRING:string)()=>raylib.GetApplicationDirectory();
//int MakeDirectory(const(char)* dirPath); // Create directories (including full path requested), returns 0 on success
//MakeDirectory["const(char)* dirPath"]
auto MakeDirectory(STRING:string)(STRING dirPath,)=>raylib.MakeDirectory( dirPath.toStringz,);
//bool ChangeDirectory(const(char)* dir); // Change working directory, return true on success
//ChangeDirectory["const(char)* dir"]
auto ChangeDirectory(STRING:string)(STRING dir,)=>raylib.ChangeDirectory( dir.toStringz,);
//bool IsPathFile(const(char)* path); // Check if a given path is a file or a directory
//IsPathFile["const(char)* path"]
auto IsPathFile(STRING:string)(STRING path,)=>raylib.IsPathFile( path.toStringz,);
//bool IsFileNameValid(const(char)* fileName); // Check if fileName is valid for the platform/OS
//IsFileNameValid["const(char)* fileName"]
auto IsFileNameValid(STRING:string)(STRING fileName,)=>raylib.IsFileNameValid( fileName.toStringz,);
//FilePathList LoadDirectoryFiles(const(char)* dirPath); // Load directory filepaths
//LoadDirectoryFiles["const(char)* dirPath"]
auto LoadDirectoryFiles(STRING:string)(STRING dirPath,)=>raylib.LoadDirectoryFiles( dirPath.toStringz,);
//FilePathList LoadDirectoryFilesEx(const(char)* basePath, const(char)* filter, bool scanSubdirs); // Load directory filepaths with extension filtering and recursive directory scan. Use 'DIR' in the filter string to include directories in the result
//LoadDirectoryFilesEx["const(char)* basePath", "const(char)* filter", "bool scanSubdirs"]
auto LoadDirectoryFilesEx(STRING:string)(STRING basePath,STRING filter,bool scanSubdirs,)=>raylib.LoadDirectoryFilesEx( basePath.toStringz, filter.toStringz, scanSubdirs,);
//c_long GetFileModTime(const(char)* fileName); // Get file modification time (last write time)
//GetFileModTime["const(char)* fileName"]
auto GetFileModTime(STRING:string)(STRING fileName,)=>raylib.GetFileModTime( fileName.toStringz,);
//AutomationEventList LoadAutomationEventList(const(char)* fileName); // Load automation events list from file, NULL for empty list, capacity = MAX_AUTOMATION_EVENTS
//LoadAutomationEventList["const(char)* fileName"]
auto LoadAutomationEventList(STRING:string)(STRING fileName,)=>raylib.LoadAutomationEventList( fileName.toStringz,);
//bool ExportAutomationEventList(AutomationEventList list, const(char)* fileName); // Export automation events list as text file
//ExportAutomationEventList["AutomationEventList list", "const(char)* fileName"]
auto ExportAutomationEventList(STRING:string)(AutomationEventList list,STRING fileName,)=>raylib.ExportAutomationEventList( list, fileName.toStringz,);
//const(char)* GetGamepadName(int gamepad); // Get gamepad internal name id
//GetGamepadName["int gamepad"]
auto GetGamepadName(STRING:string)(int gamepad,)=>raylib.GetGamepadName( gamepad,);
//int SetGamepadMappings(const(char)* mappings); // Set internal gamepad mappings (SDL_GameControllerDB)
//SetGamepadMappings["const(char)* mappings"]
auto SetGamepadMappings(STRING:string)(STRING mappings,)=>raylib.SetGamepadMappings( mappings.toStringz,);
//Image LoadImage(const(char)* fileName); // Load image from file into CPU memory (RAM)
//LoadImage["const(char)* fileName"]
auto LoadImage(STRING:string)(STRING fileName,)=>raylib.LoadImage( fileName.toStringz,);
//Image LoadImageRaw(const(char)* fileName, int width, int height, int format, int headerSize); // Load image from RAW file data
//LoadImageRaw["const(char)* fileName", "int width", "int height", "int format", "int headerSize"]
auto LoadImageRaw(STRING:string)(STRING fileName,int width,int height,int format,int headerSize,)=>raylib.LoadImageRaw( fileName.toStringz, width, height, format, headerSize,);
//Image LoadImageAnim(const(char)* fileName, int* frames); // Load image sequence from file (frames appended to image.data)
//LoadImageAnim["const(char)* fileName", "int* frames"]
auto LoadImageAnim(STRING:string)(STRING fileName,int* frames,)=>raylib.LoadImageAnim( fileName.toStringz, frames,);
//Image LoadImageAnimFromMemory(const(char)* fileType, const(ubyte)* fileData, int dataSize, int* frames); // Load image sequence from memory buffer
//LoadImageAnimFromMemory["const(char)* fileType", "const(ubyte)* fileData", "int dataSize", "int* frames"]
auto LoadImageAnimFromMemory(STRING:string)(STRING fileType,const(ubyte)* fileData,int dataSize,int* frames,)=>raylib.LoadImageAnimFromMemory( fileType.toStringz, fileData, dataSize, frames,);
//Image LoadImageFromMemory(const(char)* fileType, const(ubyte)* fileData, int dataSize); // Load image from memory buffer, fileType refers to extension: i.e. '.png'
//LoadImageFromMemory["const(char)* fileType", "const(ubyte)* fileData", "int dataSize"]
auto LoadImageFromMemory(STRING:string)(STRING fileType,const(ubyte)* fileData,int dataSize,)=>raylib.LoadImageFromMemory( fileType.toStringz, fileData, dataSize,);
//bool ExportImage(Image image, const(char)* fileName); // Export image data to file, returns true on success
//ExportImage["Image image", "const(char)* fileName"]
auto ExportImage(STRING:string)(Image image,STRING fileName,)=>raylib.ExportImage( image, fileName.toStringz,);
//ubyte* ExportImageToMemory(Image image, const(char)* fileType, int* fileSize); // Export image to memory buffer
//ExportImageToMemory["Image image", "const(char)* fileType", "int* fileSize"]
auto ExportImageToMemory(STRING:string)(Image image,STRING fileType,int* fileSize,)=>raylib.ExportImageToMemory( image, fileType.toStringz, fileSize,);
//bool ExportImageAsCode(Image image, const(char)* fileName); // Export image as code file defining an array of bytes, returns true on success
//ExportImageAsCode["Image image", "const(char)* fileName"]
auto ExportImageAsCode(STRING:string)(Image image,STRING fileName,)=>raylib.ExportImageAsCode( image, fileName.toStringz,);
//Image GenImageText(int width, int height, const(char)* text); // Generate image: grayscale image from text data
//GenImageText["int width", "int height", "const(char)* text"]
auto GenImageText(STRING:string)(int width,int height,STRING text,)=>raylib.GenImageText( width, height, text.toStringz,);
//Image ImageText(const(char)* text, int fontSize, Color color); // Create an image from text (default font)
//ImageText["const(char)* text", "int fontSize", "Color color"]
auto ImageText(STRING:string)(STRING text,int fontSize,Color color,)=>raylib.ImageText( text.toStringz, fontSize, color,);
//Image ImageTextEx(Font font, const(char)* text, float fontSize, float spacing, Color tint); // Create an image from text (custom sprite font)
//ImageTextEx["Font font", "const(char)* text", "float fontSize", "float spacing", "Color tint"]
auto ImageTextEx(STRING:string)(Font font,STRING text,float fontSize,float spacing,Color tint,)=>raylib.ImageTextEx( font, text.toStringz, fontSize, spacing, tint,);
//void ImageDrawText(Image* dst, const(char)* text, int posX, int posY, int fontSize, Color color); // Draw text (using default font) within an image (destination)
//ImageDrawText["Image* dst", "const(char)* text", "int posX", "int posY", "int fontSize", "Color color"]
auto ImageDrawText(STRING:string)(Image* dst,STRING text,int posX,int posY,int fontSize,Color color,)=>raylib.ImageDrawText( dst, text.toStringz, posX, posY, fontSize, color,);
//void ImageDrawTextEx(Image* dst, Font font, const(char)* text, Vector2 position, float fontSize, float spacing, Color tint); // Draw text (custom sprite font) within an image (destination)
//ImageDrawTextEx["Image* dst", "Font font", "const(char)* text", "Vector2 position", "float fontSize", "float spacing", "Color tint"]
auto ImageDrawTextEx(STRING:string)(Image* dst,Font font,STRING text,Vector2 position,float fontSize,float spacing,Color tint,)=>raylib.ImageDrawTextEx( dst, font, text.toStringz, position, fontSize, spacing, tint,);
//Texture2D LoadTexture(const(char)* fileName); // Load texture from file into GPU memory (VRAM)
//LoadTexture["const(char)* fileName"]
auto LoadTexture(STRING:string)(STRING fileName,)=>raylib.LoadTexture( fileName.toStringz,);
//Font LoadFont(const(char)* fileName); // Load font from file into GPU memory (VRAM)
//LoadFont["const(char)* fileName"]
auto LoadFont(STRING:string)(STRING fileName,)=>raylib.LoadFont( fileName.toStringz,);
//Font LoadFontEx(const(char)* fileName, int fontSize, int* codepoints, int codepointCount); // Load font from file with extended parameters, use NULL for codepoints and 0 for codepointCount to load the default character set, font size is provided in pixels height
//LoadFontEx["const(char)* fileName", "int fontSize", "int* codepoints", "int codepointCount"]
auto LoadFontEx(STRING:string)(STRING fileName,int fontSize,int* codepoints,int codepointCount,)=>raylib.LoadFontEx( fileName.toStringz, fontSize, codepoints, codepointCount,);
//Font LoadFontFromMemory(const(char)* fileType, const(ubyte)* fileData, int dataSize, int fontSize, int* codepoints, int codepointCount); // Load font from memory buffer, fileType refers to extension: i.e. '.ttf'
//LoadFontFromMemory["const(char)* fileType", "const(ubyte)* fileData", "int dataSize", "int fontSize", "int* codepoints", "int codepointCount"]
auto LoadFontFromMemory(STRING:string)(STRING fileType,const(ubyte)* fileData,int dataSize,int fontSize,int* codepoints,int codepointCount,)=>raylib.LoadFontFromMemory( fileType.toStringz, fileData, dataSize, fontSize, codepoints, codepointCount,);
//bool ExportFontAsCode(Font font, const(char)* fileName); // Export font as code file, returns true on success
//ExportFontAsCode["Font font", "const(char)* fileName"]
auto ExportFontAsCode(STRING:string)(Font font,STRING fileName,)=>raylib.ExportFontAsCode( font, fileName.toStringz,);
//void DrawText(const(char)* text, int posX, int posY, int fontSize, Color color); // Draw text (using default font)
//DrawText["const(char)* text", "int posX", "int posY", "int fontSize", "Color color"]
auto DrawText(STRING:string)(STRING text,int posX,int posY,int fontSize,Color color,)=>raylib.DrawText( text.toStringz, posX, posY, fontSize, color,);
//void DrawTextEx(Font font, const(char)* text, Vector2 position, float fontSize, float spacing, Color tint); // Draw text using font and additional parameters
//DrawTextEx["Font font", "const(char)* text", "Vector2 position", "float fontSize", "float spacing", "Color tint"]
auto DrawTextEx(STRING:string)(Font font,STRING text,Vector2 position,float fontSize,float spacing,Color tint,)=>raylib.DrawTextEx( font, text.toStringz, position, fontSize, spacing, tint,);
//void DrawTextPro(Font font, const(char)* text, Vector2 position, Vector2 origin, float rotation, float fontSize, float spacing, Color tint); // Draw text using Font and pro parameters (rotation)
//DrawTextPro["Font font", "const(char)* text", "Vector2 position", "Vector2 origin", "float rotation", "float fontSize", "float spacing", "Color tint"]
auto DrawTextPro(STRING:string)(Font font,STRING text,Vector2 position,Vector2 origin,float rotation,float fontSize,float spacing,Color tint,)=>raylib.DrawTextPro( font, text.toStringz, position, origin, rotation, fontSize, spacing, tint,);
//int MeasureText(const(char)* text, int fontSize); // Measure string width for default font
//MeasureText["const(char)* text", "int fontSize"]
auto MeasureText(STRING:string)(STRING text,int fontSize,)=>raylib.MeasureText( text.toStringz, fontSize,);
//Vector2 MeasureTextEx(Font font, const(char)* text, float fontSize, float spacing); // Measure string size for Font
//MeasureTextEx["Font font", "const(char)* text", "float fontSize", "float spacing"]
auto MeasureTextEx(STRING:string)(Font font,STRING text,float fontSize,float spacing,)=>raylib.MeasureTextEx( font, text.toStringz, fontSize, spacing,);
//int* LoadCodepoints(const(char)* text, int* count); // Load all codepoints from a UTF-8 text string, codepoints count returned by parameter
//LoadCodepoints["const(char)* text", "int* count"]
auto LoadCodepoints(STRING:string)(STRING text,int* count,)=>raylib.LoadCodepoints( text.toStringz, count,);
//int GetCodepointCount(const(char)* text); // Get total number of codepoints in a UTF-8 encoded string
//GetCodepointCount["const(char)* text"]
auto GetCodepointCount(STRING:string)(STRING text,)=>raylib.GetCodepointCount( text.toStringz,);
//int GetCodepoint(const(char)* text, int* codepointSize); // Get next codepoint in a UTF-8 encoded string, 0x3f('?') is returned on failure
//GetCodepoint["const(char)* text", "int* codepointSize"]
auto GetCodepoint(STRING:string)(STRING text,int* codepointSize,)=>raylib.GetCodepoint( text.toStringz, codepointSize,);
//int GetCodepointNext(const(char)* text, int* codepointSize); // Get next codepoint in a UTF-8 encoded string, 0x3f('?') is returned on failure
//GetCodepointNext["const(char)* text", "int* codepointSize"]
auto GetCodepointNext(STRING:string)(STRING text,int* codepointSize,)=>raylib.GetCodepointNext( text.toStringz, codepointSize,);
//int GetCodepointPrevious(const(char)* text, int* codepointSize); // Get previous codepoint in a UTF-8 encoded string, 0x3f('?') is returned on failure
//GetCodepointPrevious["const(char)* text", "int* codepointSize"]
auto GetCodepointPrevious(STRING:string)(STRING text,int* codepointSize,)=>raylib.GetCodepointPrevious( text.toStringz, codepointSize,);
//const(char)* CodepointToUTF8(int codepoint, int* utf8Size); // Encode one codepoint into UTF-8 byte array (array length returned as parameter)
//CodepointToUTF8["int codepoint", "int* utf8Size"]
auto CodepointToUTF8(STRING:string)(int codepoint,int* utf8Size,)=>raylib.CodepointToUTF8( codepoint, utf8Size,);
//int TextCopy(char* dst, const(char)* src); // Copy one string to another, returns bytes copied
//TextCopy["char* dst", "const(char)* src"]
auto TextCopy(STRING:string)(char* dst,STRING src,)=>raylib.TextCopy( dst, src.toStringz,);
//bool TextIsEqual(const(char)* text1, const(char)* text2); // Check if two text string are equal
//TextIsEqual["const(char)* text1", "const(char)* text2"]
auto TextIsEqual(STRING:string)(STRING text1,STRING text2,)=>raylib.TextIsEqual( text1.toStringz, text2.toStringz,);
//uint TextLength(const(char)* text); // Get text length, checks for '\0' ending
//TextLength["const(char)* text"]
auto TextLength(STRING:string)(STRING text,)=>raylib.TextLength( text.toStringz,);
//const(char)* TextFormat(const(char)* text, ...); // Text formatting with variables (sprintf() style)
//TextFormat["const(char)* text", "..."]
auto TextFormat(STRING:string)(STRING text,)=>raylib.TextFormat( text.toStringz,);
//const(char)* TextSubtext(const(char)* text, int position, int length); // Get a piece of a text string
//TextSubtext["const(char)* text", "int position", "int length"]
auto TextSubtext(STRING:string)(STRING text,int position,int length,)=>raylib.TextSubtext( text.toStringz, position, length,);
//char* TextReplace(const(char)* text, const(char)* replace, const(char)* by); // Replace text string (WARNING: memory must be freed!)
//TextReplace["const(char)* text", "const(char)* replace", "const(char)* by"]
auto TextReplace(STRING:string)(STRING text,STRING replace,STRING by,)=>raylib.TextReplace( text.toStringz, replace.toStringz, by.toStringz,);
//char* TextInsert(const(char)* text, const(char)* insert, int position); // Insert text in a position (WARNING: memory must be freed!)
//TextInsert["const(char)* text", "const(char)* insert", "int position"]
auto TextInsert(STRING:string)(STRING text,STRING insert,int position,)=>raylib.TextInsert( text.toStringz, insert.toStringz, position,);
//const(char)* TextJoin(const(char*)* textList, int count, const(char)* delimiter); // Join text strings with delimiter
//TextJoin["const(char*)* textList", "int count", "const(char)* delimiter"]
auto TextJoin(STRING:string)(const(char*)* textList,int count,STRING delimiter,)=>raylib.TextJoin( textList, count, delimiter.toStringz,);
//const(char*)* TextSplit(const(char)* text, char delimiter, int* count); // Split text into multiple strings
//TextSplit["const(char)* text", "char delimiter", "int* count"]
auto TextSplit(STRING:string)(STRING text,char delimiter,int* count,)=>raylib.TextSplit( text.toStringz, delimiter, count,);
//void TextAppend(char* text, const(char)* append, int* position); // Append text at specific position and move cursor!
//TextAppend["char* text", "const(char)* append", "int* position"]
auto TextAppend(STRING:string)(char* text,STRING append,int* position,)=>raylib.TextAppend( text, append.toStringz, position,);
//int TextFindIndex(const(char)* text, const(char)* find); // Find first text occurrence within a string
//TextFindIndex["const(char)* text", "const(char)* find"]
auto TextFindIndex(STRING:string)(STRING text,STRING find,)=>raylib.TextFindIndex( text.toStringz, find.toStringz,);
//const(char)* TextToUpper(const(char)* text); // Get upper case version of provided string
//TextToUpper["const(char)* text"]
auto TextToUpper(STRING:string)(STRING text,)=>raylib.TextToUpper( text.toStringz,);
//const(char)* TextToLower(const(char)* text); // Get lower case version of provided string
//TextToLower["const(char)* text"]
auto TextToLower(STRING:string)(STRING text,)=>raylib.TextToLower( text.toStringz,);
//const(char)* TextToPascal(const(char)* text); // Get Pascal case notation version of provided string
//TextToPascal["const(char)* text"]
auto TextToPascal(STRING:string)(STRING text,)=>raylib.TextToPascal( text.toStringz,);
//const(char)* TextToSnake(const(char)* text); // Get Snake case notation version of provided string
//TextToSnake["const(char)* text"]
auto TextToSnake(STRING:string)(STRING text,)=>raylib.TextToSnake( text.toStringz,);
//const(char)* TextToCamel(const(char)* text); // Get Camel case notation version of provided string
//TextToCamel["const(char)* text"]
auto TextToCamel(STRING:string)(STRING text,)=>raylib.TextToCamel( text.toStringz,);
//int TextToInteger(const(char)* text); // Get integer value from text (negative values not supported)
//TextToInteger["const(char)* text"]
auto TextToInteger(STRING:string)(STRING text,)=>raylib.TextToInteger( text.toStringz,);
//float TextToFloat(const(char)* text); // Get float value from text (negative values not supported)
//TextToFloat["const(char)* text"]
auto TextToFloat(STRING:string)(STRING text,)=>raylib.TextToFloat( text.toStringz,);
//Model LoadModel(const(char)* fileName); // Load model from files (meshes and materials)
//LoadModel["const(char)* fileName"]
auto LoadModel(STRING:string)(STRING fileName,)=>raylib.LoadModel( fileName.toStringz,);
//bool ExportMesh(Mesh mesh, const(char)* fileName); // Export mesh data to file, returns true on success
//ExportMesh["Mesh mesh", "const(char)* fileName"]
auto ExportMesh(STRING:string)(Mesh mesh,STRING fileName,)=>raylib.ExportMesh( mesh, fileName.toStringz,);
//bool ExportMeshAsCode(Mesh mesh, const(char)* fileName); // Export mesh as code file (.h) defining multiple arrays of vertex attributes
//ExportMeshAsCode["Mesh mesh", "const(char)* fileName"]
auto ExportMeshAsCode(STRING:string)(Mesh mesh,STRING fileName,)=>raylib.ExportMeshAsCode( mesh, fileName.toStringz,);
//Material* LoadMaterials(const(char)* fileName, int* materialCount); // Load materials from model file
//LoadMaterials["const(char)* fileName", "int* materialCount"]
auto LoadMaterials(STRING:string)(STRING fileName,int* materialCount,)=>raylib.LoadMaterials( fileName.toStringz, materialCount,);
//ModelAnimation* LoadModelAnimations(const(char)* fileName, int* animCount); // Load model animations from file
//LoadModelAnimations["const(char)* fileName", "int* animCount"]
auto LoadModelAnimations(STRING:string)(STRING fileName,int* animCount,)=>raylib.LoadModelAnimations( fileName.toStringz, animCount,);
//Wave LoadWave(const(char)* fileName); // Load wave data from file
//LoadWave["const(char)* fileName"]
auto LoadWave(STRING:string)(STRING fileName,)=>raylib.LoadWave( fileName.toStringz,);
//Wave LoadWaveFromMemory(const(char)* fileType, const(ubyte)* fileData, int dataSize); // Load wave from memory buffer, fileType refers to extension: i.e. '.wav'
//LoadWaveFromMemory["const(char)* fileType", "const(ubyte)* fileData", "int dataSize"]
auto LoadWaveFromMemory(STRING:string)(STRING fileType,const(ubyte)* fileData,int dataSize,)=>raylib.LoadWaveFromMemory( fileType.toStringz, fileData, dataSize,);
//Sound LoadSound(const(char)* fileName); // Load sound from file
//LoadSound["const(char)* fileName"]
auto LoadSound(STRING:string)(STRING fileName,)=>raylib.LoadSound( fileName.toStringz,);
//bool ExportWave(Wave wave, const(char)* fileName); // Export wave data to file, returns true on success
//ExportWave["Wave wave", "const(char)* fileName"]
auto ExportWave(STRING:string)(Wave wave,STRING fileName,)=>raylib.ExportWave( wave, fileName.toStringz,);
//bool ExportWaveAsCode(Wave wave, const(char)* fileName); // Export wave sample data to code (.h), returns true on success
//ExportWaveAsCode["Wave wave", "const(char)* fileName"]
auto ExportWaveAsCode(STRING:string)(Wave wave,STRING fileName,)=>raylib.ExportWaveAsCode( wave, fileName.toStringz,);
//Music LoadMusicStream(const(char)* fileName); // Load music stream from file
//LoadMusicStream["const(char)* fileName"]
auto LoadMusicStream(STRING:string)(STRING fileName,)=>raylib.LoadMusicStream( fileName.toStringz,);
//Music LoadMusicStreamFromMemory(const(char)* fileType, const(ubyte)* data, int dataSize); // Load music stream from data
//LoadMusicStreamFromMemory["const(char)* fileType", "const(ubyte)* data", "int dataSize"]
auto LoadMusicStreamFromMemory(STRING:string)(STRING fileType,const(ubyte)* data,int dataSize,)=>raylib.LoadMusicStreamFromMemory( fileType.toStringz, data, dataSize,);
