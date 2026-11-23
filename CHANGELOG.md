# Changelog

## [0.2.0] - 2026-11-20

### English
- Auto demo mode: the character now walks and jumps on its own in a loop (toggleable in the panel, arrow keys switch to manual control), so the speaker can focus on talking; panel and preset changes apply instantly.
- Scrolling world with game feel: obstacles (blocks, steps, a staircase) that the character jumps over automatically, a chalk-style far background scrolling with parallax, and world looping at the edges.
- Redesigned code view: a large board-filling view with realistic JavaScript on the left and Japanese explanations on the right; panel values still update and highlight the matching numbers and notes. The narrow Japanese pseudo-code box in the panel is gone.

### 日本語
- 自動デモモードを追加：キャラが歩く・ジャンプをループで自動再生する（パネルでON/OFF切替、矢印キーで手動に切替）。話者は操作せず喋りに集中でき、パネルやプリセットの変更は即座に反映される。
- 横スクロールのワールドでゲーム感を追加：障害物（ブロック、段差、階段）を自動で跳び越し、チョーク風の遠景はパララックスで流れ、ワールド端でループする。
- コード表示を再設計：黒板いっぱいの大きな表示で、左にリアルなJavaScript、右に日本語の解説を並べる。パネルの値とコードの数字・解説の連動ハイライトは維持。パネル内の狭い日本語擬似コードは廃止。

## [0.1.2] - 2026-11-10

### English
- Added a real rendered screenshot (docs/images/board-sample.png) to the README.
- Fixed the settings panel readouts showing code-formatted strings; they now show plain numbers while the code view keeps its formatted form.
- Regenerated the Mii SVG with neutral-gray background detection so skin tones survive and stray outline pixels are removed.

### 日本語
- READMEに実際の表示サンプル（docs/images/board-sample.png）を追加。
- せっていパネルの値表示にコード用の書式文字列が出ていた不具合を修正。パネルは素の数字、コード表示は書式付きに分離。
- MiiのSVGを、無彩色の明るいグレーだけを背景として抜く方式で作り直し、肌色が欠けず輪郭のノイズも消えた。

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
