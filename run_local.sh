# uv run \
sweagent run \
    --config config/coding_challenge.yaml \
    --config config/ollama_tool.yaml \
    --problem_statement.path=problems/problem.md \
    --env.repo.path=/private/tmp/TMP_REPO/ \
    --actions.apply_patch_locally=True 
		
