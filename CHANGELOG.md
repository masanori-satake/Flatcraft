# Changelog

## [0.1.1] - 2026-11-10

### English
- One-click launch for the day of the talk: `start.bat` (Windows) starts a local server built only on PowerShell's HttpListener (no installs) and opens the app in the browser; `start.sh` covers macOS/Linux via python3.
- Documented the deployment decision: no GitHub Pages (unavailable for private repositories on the Free plan); run locally on localhost instead.

### 日本語
- 当日用のワンクリック起動を追加：`start.bat`（Windows）をダブルクリックすると、PowerShell標準のHttpListenerだけを使ったローカルサーバー（追加インストール不要）が起動し、ブラウザでアプリが開く。macOS/Linux向けに `start.sh`（python3）も用意。
- デプロイ方針を明記：GitHub Pagesは使わない（FreeプランではPrivateリポジトリで使えないため）。ローカルに持ち込んでlocalhostで動かす。

## [0.1.0] - 2026-11-10

### English
- Initial prototype of the opening blackboard for a career talk: school-name sign (single CONFIG entry), typewriter dialogue window, and the speaker's Mii as a 28x28 pixel SVG.
- Live settings panel (gravity / jump power / walk speed) driving a simple physics character on the board; presets for normal / moon / super jump / heavy.
- Read-only code view whose numbers stay in sync with the panel values and highlight on change.
- PWA scaffolding (manifest + service worker) for offline use; CodeRabbit disabled via .coderabbit.yaml; talk flow and decisions documented under docs/.

### 日本語
- 職業講話用オープニング黒板の初版：学校名看板（設定は CONFIG の1箇所）、タイプライタ式の会話窓、話者のMiiを28×28ドット化したSVG。
- 常設のせっていパネル（重力／ジャンプ／速さ）でキャラの物理挙動がその場で変わる。ふつう／月面／スーパージャンプ／重いのプリセット付き。
- コードは見せるだけの表示にし、パネルの値と数字を連動させ、変更時に該当箇所が光る。
- PWAの土台（manifest＋service worker）でオフライン対応。`.coderabbit.yaml` でCodeRabbitを無効化。話の流れと決定事項を docs/ に記録。
