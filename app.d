#!opend -run app.d
import std.stdio;
import raylib;

void main(){
	validateRaylibBinding();
	InitWindow(800, 640, cast(string)"raylib");
	SetTargetFPS(60);
	while (!WindowShouldClose()){
		BeginDrawing();
		ClearBackground(BLACK);
		DrawText("hello", 330, 300, 28, WHITE);
		string bye="bye";
		bye~='!';
		DrawText(bye, 330, 400, 28, WHITE);
		EndDrawing();
	}
	CloseWindow();
}
