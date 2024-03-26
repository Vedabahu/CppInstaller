#include <stdio.h>
#include <stdlib.h>

void installGCC() {
    system("powershell -Command \"irm 'https://raw.githubusercontent.com/Vedabahu/CppInstaller/main/src/gcc.ps1' | "
           "iex\"");
    printf("Thank You for using me!! Bye");
    return;
}

void installGCCandLLVM() {
    system("powershell -Command \"irm 'https://raw.githubusercontent.com/Vedabahu/CppInstaller/main/src/gccLLVM.ps1' "
           "| iex\"");
    printf("Thank You for using me!! Bye");
    return;
}

int main() {
    system("cls");
    while (1) {
        printf("############################################\n");
        printf("##      C and C++ Compiler Installer      ##\n");
        printf("############################################\n");
        printf("############################################\n");
        printf("## Select an Option :                     ##\n");
        printf("## 1 : Install Gcc                        ##\n");
        printf("## 2 : Install Gcc and Clang              ##\n");
        printf("## 3 : Exit                               ##\n");
        printf("############################################\n");
        printf("############################################\n");

        printf("\nEnter your choice : ");
        int i = 0;
        scanf("%d", &i);
        switch (i) {
            case 1:
                installGCC();
                exit(0);
                break;
            case 2:
                installGCCandLLVM();
                exit(0);
                break;
            case 3: exit(0);
            default: system("cls"); printf("Enter a proper choice.");
        }
    }
}