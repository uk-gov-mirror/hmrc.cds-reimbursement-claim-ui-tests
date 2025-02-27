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

package uk.gov.hmrc.cdsrc.pages

import uk.gov.hmrc.cdsrc.conf.TestConfiguration

object CheckAnswersAcceptSendPage extends BasePage {

  override val url: String = TestConfiguration.url("cds-frontend") + "/check-answers-accept-send"
  override val title = "Check your answers before sending your application"

  override def expectedPageErrorTitle: Option[String] = Some("Check your answers before sending your application - Claim for reimbursement of import duties - GOV.UK")

  override def expectedPageTitle: Option[String] = Some("Check your answers before sending your application - Claim for reimbursement of import duties - GOV.UK")

  override def expectedPageHeader: Option[String] = Some("Check your answers before sending your application")

  override def clickButton(buttonText: String): Unit = {
    buttonText match {
      case "change reference number" => click on cssSelector("#main-content > div > div > dl:nth-child(3) > div > dd.govuk-summary-list__actions > a")
    }
  }

}
