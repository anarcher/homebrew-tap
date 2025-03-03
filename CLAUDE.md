# CLAUDE.md - Guidelines for Homebrew Tap Repository

## Commands
- Test formula: `brew test Formula/kroller.rb`
- Audit formula: `brew audit --strict --online Formula/kroller.rb`
- Style check: `brew style Formula/kroller.rb`
- Install from source: `brew install --build-from-source Formula/kroller.rb`

## Formula Style Guidelines
- Follow Ruby style conventions (2-space indentation)
- Use class-based formula structure with proper inheritance
- Update SHA256 checksums when changing version numbers
- Include appropriate test blocks for each formula
- Maintain architecture-specific blocks (arm64/amd64) when necessary
- Keep formula descriptions concise and accurate
- Always specify license information when available
- Follow Homebrew versioning patterns (e.g., v0.3.1 format)
- Update both URL and version simultaneously when releasing