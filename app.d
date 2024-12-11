import std.stdio;
import raylib;
import stringoverloads;

void main()
{
	writeln("Starting a raylib example.");
	validateRaylibBinding();
	string hello="Hello, World!";
	InitWindow(800, 640, hello);
	SetTargetFPS(60);
	scope (exit)
		CloseWindow(); // see https://dlang.org/spec/statement.html#scope-guard-statement

	while (!WindowShouldClose())
	{
		BeginDrawing();
		scope (exit)
			EndDrawing();

		ClearBackground(RAYWHITE);
		foreach(i;0..3){
			hello~='!';
		}
		DrawText(hello, 330, 300, 28, BLACK);
	}

	writeln("Ending a raylib example.");
}
