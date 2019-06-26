void main() {
  Page.scrollDown();
}

class Page {
  static int currentPage = 1;

  static const int maxPage = 10;

  static void scrollDown() {
    currentPage = 1;
    print("ScrollDown...");
  }

  void scrollUp() {
    currentPage++;
    print("ScrollUp...");
  }
}
