#include <algorithm>
#include <iostream>
#include <fstream>
#include <string>
#include <set>
#include <map>
using namespace std;
int main() {
    string word;
    multiset<string> text;
    map<string, int> inc;
    ifstream in("in.txt");
    if (!in.is_open()) {
        cerr<< "Error opening file" << endl;
        return 1;
    }
    /* witch hotkey selects the line?
     * */

    while (in >> word) {
        text.insert(word);
    }
    in.close();
    for (const auto& it : text) {
        cout << it << endl;
    }
    int counter = 0;
    for (auto it = text.begin(); it != text.end(); it++, counter++) {
        string temp;
        temp = *it;
        std::transform(temp.begin(), temp.end(), temp.begin(), ::tolower);
        inc[temp] = counter;
    }
    cout << inc.size();
}
