    def test_delete_customer(self):
        driver = self.driver
        driver.get("http://127.0.0.1:8000/management/home")
        driver.find_element_by_link_text("View Customers").click()
        driver.find_element_by_link_text("6").click()
        driver.find_element_by_xpath("(.//*[normalize-space(text()) and normalize-space(.)='Search:'])[1]/input[1]").click()
        driver.find_element_by_link_text("C0011560").click()
        driver.find_element_by_xpath("(.//*[normalize-space(text()) and normalize-space(.)='Save'])[1]/following::button[1]").click()
        driver.find_element_by_link_text("Yes").click()
        driver.get("http://127.0.0.1:8000/management/customer/C0011560")
        self.assertEqual("Page not found (404)", driver.find_element_by_xpath("(.//*[normalize-space(text()) and normalize-space(.)='Request Method:'])[1]/preceding::h1[1]").text)
        # ERROR: Caught exception [unknown command []]