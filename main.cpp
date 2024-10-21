#include <raylib.h>
#include <iostream>
using namespace std;


class Window {
    public:
    int height, width , fps;
    string windowName;

    Window(int width, int height , int fps , string windowName) : height(width), width(width), fps(fps) , windowName(windowName) {
        InitWindow(width, height, windowName.c_str());
        SetTargetFPS(fps);
    }
    void run() {
        while (!WindowShouldClose()) {
            BeginDrawing();
                ClearBackground((Color){46,88,67,255});
                DrawText("Congrats! You created your first window!", 190, 200, 20, RED);
            EndDrawing();
        }
        close();
    }
    void close() {
        CloseWindow();
    }
};

int main() {
    Window win(800, 450, 60, "Raylib Window");
    win.run();
    cout << "running" << endl;
    return 0;

}