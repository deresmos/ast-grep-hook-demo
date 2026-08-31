.PHONY: ast-grep-test
ast-grep-test:
	ast-grep test --skip-snapshot-tests

PROMPT := "src/example.js greetにconsole.log('test') を追加してください。"

.PHONY: test-stop-hook
test-stop-hook:
	claude --model haiku --permission-mode acceptEdits $(PROMPT)

.PHONY: test-post-tool-use-hook
test-post-tool-use-hook:
	claude --settings ./.claude/settings.post_tool_use.json --model haiku --permission-mode acceptEdits $(PROMPT)
