def test_login(self):
        driver = self.driver
        driver.get("http://127.0.0.1:8000/login")
        driver.find_element_by_id("username").click()
        driver.find_element_by_id("username").clear()
        driver.find_element_by_id("username").send_keys("dev")
        driver.find_element_by_id("password").clear()
        driver.find_element_by_id("password").send_keys("dev")
        driver.find_element_by_xpath("(.//*[normalize-space(text()) and normalize-space(.)='Password'])[1]/following::button[1]").click()