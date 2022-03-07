#include <iostream>
#include <iomanip>

void input(int arr[], int n) {
    for (int i = 0; i < n; i++) {
        std::cout << "Type the variable of array number " << i+1 << " : ";
        std::cin >> arr[i];
    }
}

void output_no_order(int arr[], int n) {
    for (int i = 0; i < n; i++) {
        std::cout << std::setw(5) << arr[i];
    }
}

void order(int arr[], int n) {
    int k;

    for (int i = 0; i < n-1; i++) {
        for (int j = i+1; j < n; j++) {
            if (arr[i] > arr[j]) {
                k = arr[i];
                arr[i] = arr[j];
                arr[j] = k;
            }
        }
    }
}

void output_ordered(int arr[], int n) {
    for (int i = 0; i < n; i++) {
        std::cout << std::setw(5) << arr[i];
    }
}

int main() {
    int n;
    int arr[1000];

    std::cout << "Amount of array: ";
    std::cin >> n;

    std::cout << std::endl;
    input(arr, n);

    std::cout << std::endl;
    std::cout << “Array that you have just filled in: “ << std::endl;
    output_no_order(arr, n);

    //I code on mobile to finish it, haven’t checked if it’s right or not from here
    std::cout << std::endl;    //spacing thingy
    
    order(arr, n);
    std::cout << “After ordered:” << std::endl;
    output_ordered(arr, n);

    return 0;
}
