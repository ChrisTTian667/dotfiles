# ChatGPT
# Ask ChatGPT questions directly from the terminal.
# Results are shown in terminal and markdown is formatted using `glow`.
#
# Requirements:
#   1. brew install jq glow bitwarden-cli
#   2. Setup Bitwarden CLI: https://bitwarden.com/help/article/cli/
#   3. Get your free API key here from: https://platform.openai.com/account/api-keys
#   4. Save the API Key in Bitwarden as Password in an item named 'chatgpt-terminal-key'.
#
# How to Use:
#   * In terminal, run: `gpt 'some question to chatgpt'` to ask a question.
#     - if no question is provided, it will ask you for one.
#     - if still no question is provided, it will show the last answer.
#   * In terminal, run: `gptr` to repeat the last answer.
#   * In terminal, run: `gptrs` to repeat the last answer and have it read out loud.

# check if gptKey.conf exists, if so, use the key from there, 
# otherwise ask bitwarden to get the key
if [ -f ~/Documents/gptKey.conf ]; then
    CHAT_GPT_API_KEY=$(cat ~/Documents/gptKey.conf)
else
    echo "Getting ChatGPT API Key from Bitwarden..."
    CHAT_GPT_API_KEY=$(bw get password "chatgpt-terminal-key")
    echo $CHAT_GPT_API_KEY > ~/Documents/gptKey.conf
fi

alias gpt='ask() {
    question=$@

    if [ -z "$question" ]; then
        read "question?What? "
    fi
    if [ -z "$question" ]; then
        glow ~/Documents/chat.md
    else
        curl --silent https://api.openai.com/v1/chat/completions \
        -H "Authorization: Bearer $CHAT_GPT_API_KEY" \
        -H "Content-Type: application/json" \
        -d "{ \"model\": \"gpt-3.5-turbo\", \"messages\": [{\"role\": \"user\", \"content\": \"$question\"}]}" \
        | jq -r ".choices[0].message.content" \
        | tee ~/Documents/chat.md \
        | glow
    fi
}; ask'

alias gptr='glow ~/Documents/chat.md'
alias gptrs='glow ~/Documents/chat.md && cat ~/Documents/chat.md | say --rate="185" --voice='Samantha''