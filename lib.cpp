#include <iostream>
#include <set>
#include <string>
#include <utility>
using namespace std;


class Book {
private:
    int udk_number;
    string name;
    int year;
    set<string> autors;

public:
    Book(int udk_number, string name, int year, const string& autor) {
        this->udk_number = udk_number;
        this->name = std::move(name);
        autor_set(autor);
        this->year = year;
    }

    Book() {
        udk_number = 0;
        name = "";
        year = 0;
    }

    multiset<Book, compare_>

    [[nodiscard]] string get_name() const {
        return name;
    }

    [[nodiscard]] int get_udk() const {
        return udk_number;
    }

    [[nodiscard]] int get_year() const {
        return year;
    }

    [[nodiscard]] set<string> get_autors() const {
        return autors;
    }

    void autor_set(string str) {
        while (str.find(',') != string::npos) {
            autors.insert(str.substr(0, str.find(',')));
            str = str.substr(str.find(',') + 1);
        }
        autors.insert(str);
    }
};

struct compare_by_name {
    bool operator()(const Book& a, const Book& b) const {
        return (a.get_name() < b.get_name());
    }
};

void insert(multiset<Book, compare_by_name>& library, const int& udk_nummer, const string& name, const string& autors,
            const int& year) {
    library.insert(Book(udk_nummer, name, year, autors));
}

void delete_by_udk(multiset<Book, compare_by_name>& library, const int& udk) {
    for (const auto& it: library) {
        if (it.get_udk() == udk) {
            library.erase(it);
            return;
        }
    }
}

void search_by_autor(const multiset<Book, compare_by_name>& library, const string& autor) {
    for (const auto& it : library) {
        for (const auto& it2 : it.get_autors()) {
            if (it2 == autor) {
                cout << "name: " << endl;
                cout << it.get_name() << endl;
                cout << "---------------------" << endl;
                cout << "udk: " << endl;
                cout << it.get_udk() << endl;
                cout << "---------------------" << endl;
                cout << "year: " << endl;
                cout << it.get_year() << endl;
                cout << "---------------------" << endl;
                cout << "autors: " << endl;
                for (const auto& it3 : it.get_autors()) {
                    cout << it3 << endl;
                }
                cout << "---------------------" << endl;
            }
        }
    }
}

void search_by_name(const multiset<Book, compare_by_name>& library, const string& name) {
    for (const auto& it: library) {
        if (it.get_name() == name) {
            cout << "search_by_name" << endl << endl;
            cout << "name: " << endl;
            cout << it.get_name() << endl;
            cout << "---------------------" << endl;
            cout << "udk: " << endl;
            cout << it.get_udk() << endl;
            cout << "---------------------" << endl;
            cout << "year: " << endl;
            cout << it.get_year() << endl;
            cout << "---------------------" << endl;
            cout << "autors: " << endl;
            for (const auto& it2: it.get_autors()) {
                cout << it2 << endl;
            }
            cout << "---------------------" << endl;
        }
    }
}
void add_autor(multiset<Book, compare_by_name>& library, const int& udk, const string& autor) {
    for (const auto& it: library) {
        if (it.get_udk() == udk) {
            Book book = it;
            book.autor_set(autor);
            library.erase(it);
            library.insert(book);
            return;
        }
    }
}
int main() {
    multiset<Book, compare_by_name> library;
    insert(library, 123, "huinya", "Konax 4len", 2000);
    insert(library, 12543, "topchik", "Zadvorny", 4134);
    insert(library, 234423, "topchik", "Konax 4len,Zadvorny,kazakow", 4134);
    search_by_name(library, "topchik");
    search_by_autor(library, "Konax 4len");
}
