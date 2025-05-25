# uv run \
	uvx --env-file env.docker sweagent-1.1.0-py3-none-any.whl run \
    --config config/coding_challenge.yaml \
    --config config/ollama_tool.yaml \
    --problem_statement.path=problems/problem.md \
    --env.repo.path=/app/tmp/ \
    --actions.apply_patch_locally=True 
		
