#include "split.h"
#include<iostream>
#include<string>
#include<vector>
#include<cstring>
using namespace std;
std::vector<std::string> split(std::string str, char spl)
{
    int all_spl = 0;
    int N = str.length();
    std::vector<std::string> str_arr;
    int start_str = 0;//òåêóùèé ýë ñòðîêè
    int end_str = 0;
    for (int i = 0; i < N; i++)
    {
        if (str[i] == spl) all_spl++;
    }
    for (int i = 0; i < all_spl+1; i++) {
        end_str = 0;//ïîçèöèÿ çàïÿòîé
        for (int j = start_str; j < N; j++) { 
            end_str++;
            if (str[j] == spl) {
                break;
            }
        }
        if (start_str + end_str == N) {
            str_arr.push_back(str.substr(start_str, end_str));
        }
        else {
            str_arr.push_back(str.substr(start_str, end_str - 1));
        }
        start_str = start_str + end_str;
    }
    std::vector<std::string> res_str;
    int sizee = str_arr.size();
    for (int i = 0; i < sizee; i++)
    {
        std::cout << str_arr[i] << std::endl;
    }
    int size_st = 0;
    for (int i = 0; i < sizee; i++)
    {
        size_st = str_arr[i].length();
        char* cstr = new char[size_st + 1];
        strcpy(cstr, str_arr[i].c_str());

        char* p = strtok(cstr, " ");
        while (p != 0)
        {
            res_str.push_back(p);
            p = strtok(NULL, " ");
        }
    }
    sizee = res_str.size();
    for (int i = 0; i < sizee; i++)
    {
        std::cout << res_str[i] << std::endl;
    }
    try
    {
        if (sizee == 3 || sizee == 8) return res_str;
        else throw "there is problem with coordinates";
    }
    catch (const char* exception)
    {
            std::cerr << "Error: " << exception << '\n';
    }
    return res_str;
}