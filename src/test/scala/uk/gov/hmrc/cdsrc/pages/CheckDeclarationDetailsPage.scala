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

object CheckDeclarationDetailsPage extends BasePage {

  override val url: String = TestConfiguration.url("cds-frontend") + "/check-declaration-details"
  override val title = "Check these details are correct"

  override def expectedPageErrorTitle: Option[String] = Some("Check these details are correct - Claim for reimbursement of import duties - GOV.UK")

  override def expectedPageTitle: Option[String] = Some("Check these details are correct - Claim for reimbursement of import duties - GOV.UK")

  override def expectedPageHeader: Option[String] = Some("Check these details are correct")

}
