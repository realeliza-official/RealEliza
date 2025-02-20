/**
 * Created by obesitychow on 8/15/23
 */

package ai.realeliza.app.network

import ai.realeliza.app.model.ILanguage
import ai.realeliza.app.model.ILlmOption
import ai.realeliza.app.model.LanguageOption
import ai.realeliza.app.model.LlmOption

data class SessionConfig(
    val useSearch: Boolean = false,
    val useQuivr: Boolean = false,
    val language: ILanguage = LanguageOption.English,
    val llmModel: ILlmOption = LlmOption.GPT35,
    val characterId: String,
    val token: String = "",
)
