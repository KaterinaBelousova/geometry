#ifndef READFILL_H
#define READFILL_H
#include <string>
#include <vector>
using namespace std;
struct circle {
    string figure;
    int x, y;
    double r;
    double perimeter;
    double area;
    vector<int> inter;
    vector<int> f; // circle -1; tr -2
};
struct triangle {
    string figure;
    vector<int> xy;
    double perimeter;
    double area;
    vector<int> inter;
    vector<int> f;
};

struct figures {
    circle a;
    triangle b;
};

void fill_struct(
        std::vector<std::string>& a, char figure[], std::vector<figures>& res);
void print_triangle(triangle* tr);
void print_circle(circle* c);
void print(std::vector<figures> result);
void inf_input();
#endif