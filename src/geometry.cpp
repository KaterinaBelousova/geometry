#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <iostream>
using namespace std;
struct circle {
    char figure[256];
    int x, y;
    double r;
};
int main()
{
    int N = 0;
    cout << "Enter N = ";
    cin >> N;
    circle* circles = new circle[N];
    cout << "enter figure(x y, r)" << endl;
    for (int i = 0; i < N; i++) {
        cin.getline(circles[i].figure, 50, '(');
        scanf("%d%d%*c%lf ", &circles[i].x, &circles[i].y, &circles[i].r);
        cin.ignore();
    }
    cout << endl;
    for (int i = 0; i < N; i++) {
        cout << circles[i].figure << "(" << circles[i].x << " " << circles[i].y
             << ", " << circles[i].r << ')';
    }
    cout << endl;
    return 0;
}