# 音ピシャのステージング環境（仮）用のリポジトリです。

![](https://gyazo.com/b54622738fcaa5bd4b90132600803f40.png)

## ■サービスのURL
ログインなしでもお遊びいただけます。
https://sound-hit.vercel.app/

## ■サービス概要
おんぴしゃは、カラオケや楽器演奏で最初の1音目をドンピシャで当てれるように練習するための音声測定サービスです。
- デバイスから発生した音と同じ高さの声・音が出たか測定します。
- 何回連続で音を当てれたか記録し、ランキング形式で表示します。

## ■このサービスへの想い・作りたい理由
カラオケや楽器演奏の上達の要因の1つとして、自分のイメージしている音がすぐに出せるかどうかがあると思います。
今以上に気持ちよく歌ったり、上手に演奏することができるためにゲーム感覚で音感を鍛えたいと考え、このアプリを作ろうと思いました。

## ■想定されるユーザー層
- 歌い初めや演奏し初めに音がぶれてしまう方。
- 音感を鍛えたい方。
- イメージどおりの音を出せることに自信のある方。

私自身、歌いだしにぴったり音を当てることに困難を感じているため、そのような方を対象としています。また、音をぴったり当てれる方にもランキング形式を採用することで上位ランクインを目的にご利用いただけると考えています。
カラオケや楽器演奏がうまくなりたい方、音感で競いたい方などが対象です。

## ■サービスの利用イメージ
一定の音域の中でランダムに音を発生させ、その後ユーザーが発生した音の高さと揃っているか判定します。

|トップ画面|会員登録|
|:-:|:-:|
|![トップ画面](https://i.gyazo.com/1e5d17df4f0449b745d1ed05322cf055.jpg)|![会員登録](https://i.gyazo.com/d9c6bc054cdc97a7095b0c35a11daa74.jpg)|
|ドロップダウンからモードを選び次の画面に進めます。また右上のボタンからログイン・会員登録ができます。|ユーザー名、メールアドレス、パスワードを入力して登録を行うことができます。

|ログイン画面|遊び方画面|
|:-:|:-:|
|![ログイン画面](https://i.gyazo.com/2a5b495abd2e968af1c1b166a8406d09.jpg)|![遊び方画面](https://i.gyazo.com/407e7346491c1a4a18fa0eb8b93f71a6.jpg)|
|メールアドレスとパスワードでのログイン、またGithub・Googleでもログインをすることができます。|このサービスの使い方と主な機能の紹介を見ることができます。|

|プロフィール画面|プロフィール編集画面|
|:-:|:-:|
|![プロフィール画面](https://i.gyazo.com/9aa69f9a89021a67de3c604a7d57d653.jpg)|![プロフィール編集画面](https://i.gyazo.com/d0d34995adad86ca6384832814fce0ed.jpg)|
|ユーザー名、性別、音域の他にゲームスコアを確認できます。|ユーザー名、性別、音域を編集することができます。|

|パスワードリセット画面|お問い合わせ画面|
|:-:|:-:|
|![パスワードリセット画面](https://i.gyazo.com/fbff0230fd23ce75c2d38035c72453ae.jpg)|![お問い合わせ画面](https://i.gyazo.com/fac50000122d4693791d21ff670a8d7f.jpg)|
|登録されているメールアドレスを入力することでパスワードリセット用のメールが届きます。|お問い合わせメールを送ることができます。|

|難易度・性別選択画面 (通常モード)|ゲーム画面|
|:-:|:-:|
|![難易度・性別選択画面](https://i.gyazo.com/94727cb692377bf8d770f10314073bf9.jpg)|![ゲーム画面](https://i.gyazo.com/d7616dca66807799f95b934ee75d632e.jpg)|
|ゲーム難易度と性別を選択できます。プロフィール画面もしくはこのページで性別を選択すると、対応した音域の中から出題される音が決まります。|スピーカボタンを押すと出題された音を確認できます (難易度:難しいを除く)。マイクボタンを押すと収音し、音程が一致しているか判定を行います。|

|結果画面|ランキング画面|
|:-:|:-:|
|![結果画面](https://i.gyazo.com/ef2c3b34856674e20a3ae75d1d00cd18.jpg)|![ランキング画面](https://i.gyazo.com/ba3cb0a42deb494da6d88432e70db7ce.jpg)|
|判定結果を表示します。また、結果をLINE・Xで共有することができます。|登録しているユーザーのスコアを各難易度で確認できます。|

## ■サービスの差別化ポイント・推しポイント
カラオケアプリ、再生された音の高さを当てるアプリ、発声した音程をチェックするアプリはありますが、デバイスからランダムで出た音と実際に自分が発した音声が合っているか判定するサービスはありませんでした。
吹奏楽などで使うチューナーやカラオケとは異なり、第1音の発生に焦点を置いているところがポイントです。

## ■使用技術
|カテゴリ|技術|
|:-------------|:------------|
|開発環境|Docker|
|フロントエンド|TypeScript / React / Next.js|
|バックエンド|Ruby / Ruby on Rails(API モード)|
|データベース|PostgreSQL|
|認証|NextAuth.js / devise-token-auth|
|UI構築|shadcn/ui|
|CI/CD|Github Actions|
|CSSフレームワーク|Tailwind CSS|
|インフラ|Vercel / fly.io|
|Web API|Web Audio API|

## ■画面遷移図
Figma : https://www.figma.com/file/ATFMmWCGUM49Lc8pyUutuV/sound_hit?type=design&node-id=0%3A1&mode=design&t=DmyONjpwjUrwYCXh-1

## ■ER図
[![ER図](https://i.gyazo.com/190ef57e63607d41167dd2d0de21ae3a.png)](https://gyazo.com/190ef57e63607d41167dd2d0de21ae3a)

## ■現在検討している追加サービス案
- ### 練習モード
    ピアノの鍵盤を表示してクリックで音を再生。音階の確認ができる
- ### ハモりモード
    出題された音階とハモる音（ドを出題した場合はミを発声するなど）を出す練習をする機能。
    なお、このアプリではハモる音を主旋律の3度上もしくは3度下とする。
- ### 連続音当てモード
    連続で音当てをし、10回中何回当てれたかを計測する機能。

## 今後の展望
- レスポンシブ対応
- その他SoundHit開発プロジェクトIssueより (https://github.com/users/xxx871/projects/1)