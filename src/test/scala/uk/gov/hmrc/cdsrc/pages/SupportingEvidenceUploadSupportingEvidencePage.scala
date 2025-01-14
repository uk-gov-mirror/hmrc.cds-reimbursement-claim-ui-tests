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

object SupportingEvidenceUploadSupportingEvidencePage extends BasePage {

  override val url: String = TestConfiguration.url("cds-frontend") + "/supporting-evidence/upload-supporting-evidence"
  override val title = "Upload files to support your claim"

  override def expectedPageErrorTitle: Option[String] = Some("Error: Upload files to support your claim - Claim for reimbursement of import duties - GOV.UK")

  override def expectedPageTitle: Option[String] = Some("Upload files to support your claim - Claim for reimbursement of import duties - GOV.UK")

  override def expectedPageHeader: Option[String] = Some("Upload files to support your claim")

  def uploadDocument(file: String): Unit = {
    if (file != "")
      enterText("file", System.getProperty("user.dir") + "/src/test/resources/files/" + file)
  }

  override def clickContinueButton(): Unit = {
    click on cssSelector("#main-content > div > div > form > div.govuk-\\!-margin-bottom-9 > button")
  }

}
