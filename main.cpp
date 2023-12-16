#include <iostream>
#include <fstream>
#include <string>
#include <set>
using namespace std;
int main() {
    string word;
    multiset<string> text;
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

}
