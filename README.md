# 「iPhoneアプリ開発講座　はじめてのSwift」

## CHAPTER07-02　タイマー

### 改造点
- 見た目（フォント：Courier）
- タイマー実行中に他のタイマーボタンをタップした時に、前のタイマーを停止させて新たに実行する
- タイマーボタンのアクションを１つにまとめる
    - ボタンのTagに秒数を持たせて使用する
- タイマーボタンのラベルを改行して表示する（StoryBoardで）
    - Type: Custom
    - Title: Attributed
    - 中央揃えを選ぶ
    - 文字を入力し、改行したい場所でOpt+Enterで改行
    - Line Brake: Charactor Wrap
    - 中央揃えにならない場合は、中央揃え→文字入力の順番でやること
- タイマーストップボタンの追加