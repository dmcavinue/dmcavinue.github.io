### Basic Usage:
1. Check this out, make required changes/additions to markdown under `docs/` *(don't touch `_site` dir, this is autogenerated!)*.  E.g. to add a blog post, add a markdown file under `_posts`. Check this one out for reference.

2. Run locally to see how that looks.  It should then be available at `http://localhost:4000` and should also refresh as you make changes:
``` bash
docker-compose up
```

3. Merge your changes to `master` and they should automatically publish to `https://dmcavinue.github.io` when pushed up.