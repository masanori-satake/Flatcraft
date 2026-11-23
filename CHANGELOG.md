# Changelog

## [0.3.0] - 2026-11-23

### English
- Game HUD: top-left shows the highest jump height (metres above the take-off floor, 40px = 1m) and top-right shows points earned from distance travelled (10 points per metre). Both keep growing while the demo runs, adding game feel to the opening.

### 日本語
- ゲームHUDを追加：左上に「最高の高さ」（跳び上がった足元からの高さ。40px=1m換算）、右上に「ポイント」（進んだ距離で決定。1m=10ポイント）を表示。デモ中も増え続けるので、オープニングにゲーム感が出る。

## [0.2.4] - 2026-11-23

### English
- Presets now focus all three parameters at once: the highlight is applied per gesture (batched), so pressing Moon / Super Jump / Heavy lights up all three numbers and their explanation cards together, instead of only the last one changed.

### 日本語
- プリセットを押したとき、3つのパラメータ全部が同時にフォーカスされるようにした。ハイライトを「1回の操作」単位でまとめて適用する方式に変更（従来は最後に変わった1つだけが光っていた）。

## [0.2.3] - 2026-11-23

### English
- Made the focused spot in the program view much easier to spot: the changed number now gets a solid yellow background with dark text at 1.3x size plus a glow ring, and pulses (grows and shrinks three times) the moment it changes; the matching explanation card is outlined as well. The old highlight was a faint 30%-opacity wash that was hard to see.

### 日本語
- 「中身を見る（プログラム）」で、フォーカス箇所が分かりにくかった問題を改善：変更した数字は黄色ベタ背景＋黒文字＋1.3倍＋光る輪郭になり、変わった瞬間に3回脈打つ（拡大・縮小）。対応する解説カードにも輪郭を付けた。従来は30%の薄い黄色で見分けにくかった。

## [0.2.2] - 2026-11-23

### English
- Terminology unified for the student audience: the word コード is no longer used in student-facing text; everything is explained as プログラム (the view button and the code-view note included).

### 日本語
- 生徒向けの用語を統一：「コード」という言い方を生徒に見える文言から無くし、「プログラム」で説明するようにした（「中身を見る（プログラム）」ボタン、プログラム表示の注記）。

## [0.2.1] - 2026-11-23

### English
- Wording pass for the student audience: UI labels, presets, the panel notes and the opening dialogue now use kanji for words first-year junior high students have learned (職業講話, 重力, 強さ, 速さ, 中身, 命令, 魔法 etc.) instead of spelling everything out in hiragana, so the text does not talk down to them.

### 日本語
- 生徒向けの表記見直し：パネルのラベル、プリセット、注記、オープニングの会話文について、中学1年生が習っている漢字は漢字で書くようにした（職業講話、重力、強さ、速さ、中身、命令、魔法など）。ひらがなばかりにせず、生徒を子ども扱いしない表記に。

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
