/*
 * Copyright 2021 HM Revenue & Customs
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package uk.gov.hmrc.cdsrc.driver

import com.typesafe.scalalogging.LazyLogging
import org.openqa.selenium.WebDriver
import uk.gov.hmrc.webdriver.SingletonDriver

import scala.util.Try

trait BrowserDriver extends LazyLogging {
  logger.info(
    s"Instantiating Browser: ${sys.props.getOrElse("browser", "'browser' System property not set. This is required")}"
  )

  if (!Option(System.getProperty("browser")).exists(_.length > 0)) {
    System.setProperty("browser", "chrome")
  }

  implicit lazy val driver: WebDriver = SingletonDriver.getInstance()

  val debug: Boolean = sys.props.getOrElse("drivernotquit", "false").toBoolean
  if (!debug)
    sys.addShutdownHook {
      Try(driver.quit())
    }

}
