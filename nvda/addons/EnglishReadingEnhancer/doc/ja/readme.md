# English Reading Enhancer Ver1.0.1 説明書

(更新:  2022-09-23)

[ソフトウェア詳細ページ](https://actlab.org/software/ERE)

## English Reading Enhancerの概要

English Reading Enhancerは、日本語音声合成エンジンの英語読み上げの性能を強化するNVDAアドオンです。

### 開発の経緯

NVDAは、非常に多くの音声エンジンに対応しています。
肉声に近い音質のもの、高速な読み上げが可能なもの、動作が軽快なものなど、それぞれに特徴があります。
利用者は、自分の好みに応じて好きな音声エンジンを選択できます。
また、読書用と文書の校正用など、利用するシーンによって音声エンジンを切り替えることもできます。

一方、複数の音声エンジンを使っていると、エンジンごとの読み方の違いに戸惑うことがあります。
特に、英単語など、アルファベット列の読み方は様々で、誤った発音をしたり、スペル読みしてしまったりといったことは少なくありません。

そこで、アルファベットの読み下しをNVDAの内部で行い、カタカナに変換したものを音声エンジンに渡せば、エンジンごとの読み方の差を吸収し、読み上げの性能を一定に保つことが可能になると考えました。
画面読み上げソフトJAWSの日本語版、視覚障害者向け統合フリーウェアのALTAIRなどにも類似の機能が装備されていますが、目的はほとんど同じです。

### 機能概要

本アドオンでは、概ね以下のような手順で英語の読み上げを行います。

1. 読み上げ文字列から、アルファベットが連続する部分を抽出します。また、この後の処理の都合上、全角アルファベットは半角に変換します。
2. アドオンが持っている英単語辞書を用いて、カナへの変換を試みます。複合語も判定しているため、例えば「timeline」という文字列は、「time」を「タイム」に、「line」を「ライン」にそれぞれ変換し、「タイムライン」となります。
3. 以上の手順で変換できなかったものは、ローマ字読みを試みます。
4. それでも変換できない場合は、1文字ずつスペルアウトします。

### 動作環境

NVDA 2019.3以降に対応しています。
本家版、日本語版両方のNVDAで使用できます。

本アドオンでは、英語音声で正しく英語を読み上げできなくなることを防ぐため、使用している音声の言語が日本語の場合にのみカナへの変換を行うようにしています。
しかし、一部の音声エンジンでは言語情報が正しく定義されておらず、期待通りに動作しないことがあります。
特に、以下のような場合は問題が起きる可能性があるため、必要に応じて設定をご確認ください。

* NVDAの言語が日本語以外に設定されている場合
* NVDAの音声設定で[サポートされている場合自動的に言語を切り替える]が有効になっており、日本語以外の言語で書かれたWebページやWord文書を読んでいる場合

## セットアップ方法

### インストール

ダウンロードしたファイルを展開すると、拡張子が「nvda-addon」のファイルがあります。
アドオンをインストールするには、NVDAが起動している状態でこのファイルを実行します。

また、NVDAメニューの[ツール]→[アドオン マネージャー]を使ってインストールすることもできます。
詳細については、NVDAのユーザーガイドを参照してください。

### アンインストール

本アドオンを削除する方法は、一般的なNVDAアドオンと同様です。
詳細については、NVDAのユーザーガイドを参照してください。

### アップデート

新機能の追加や不具合の修正、英語読み上げ辞書への単語の追加などの目的で、定期的にアップデートを行います。

初期状態では、NVDAの起動時にアップデートの確認が行われます。
新しいバージョンが利用可能な場合、更新するかどうかを確認するメッセージが表示されます。
画面の指示に従って操作してください。

また、アドオンの設定メニューから、起動時のアップデートチェックを無効化したり、手動でアップデートを確認したりといった操作が可能です。
メニューの利用方法など、詳細は次章の説明を参照してください。

## 利用方法

通常、本アドオンのインストール後、特別な操作を行う必要はありません。
アルファベットを含む文書を読み上げさせると、自動的にカナへの変換が行われます。

### 設定メニューの使用

本アドオンをインストールすると、NVDAメニューに[English Reading Enhancer]という項目が追加されます。
この項目を選択すると、アドオンの設定などを行うサブメニューが開きます。
各メニュー項目の概要は、下記の通りです。

* English Reading Enhancerを無効（有効）化: 本アドオンの英語読み下し機能を使用するかどうかを切り替えます。現在の状態に応じて、メニュー項目の表示が変化します。この項目を実行すると、切り替えた結果をダイアログボックスに表示します。この設定は即座に反映され、NVDAを再起動しても現在の状態を維持します。
* 起動時のアップデートチェックを無効（有効）化: NVDAを起動したときにアップデートチェックを行うかどうかを切り替えます。現在の状態に応じて、メニュー項目の表示が変化します。この項目を実行すると、切り替えた結果をダイアログボックスに表示します。
* アップデートを確認: 新しいバージョンが利用可能かどうかを手動で確認するときに使用します。NVDA起動時の自動チェックと異なり、既に最新版を使用しているときや、何らかのエラーが発生したときにも、その旨を通知するメッセージが表示されます。

## ライセンスと著作権

本アドオンは、GPL(GNU GENERAL PUBLIC LICENSE) Version 2の条件に従い、自由にご利用いただけます。

Copyright (C) 2022 Kazto Kitabatake, ACT Laboratory All rights reserved.

本アドオンで使用している英語カタカナ変換辞書は、以下のデータを元にしています。

* [Bilingual Emacspeak Project](http://www.argv.org/bep/)が提供している`bep-eng.dic`  
  Copyright 1999-2002 Bilingual Emacspeak Project.　All rights reserved.
* [High-speed Synthesizer For NVDA(HISS)](https://actlab.org/software/hiss)の[読み辞書](https://github.com/actlaboratory/HISS-dictionary)  
  Copyright (c) 2022 AccessibleToolsLaboratory

## 更新履歴

### 2022/09/23 Version 1.0.1

1. NVDAの設定で[サポートされている場合自動的に言語を切り替える]が有効な場合に、アドオンの組み込み時に警告メッセージを表示するようにしました。
2. 大文字を含む文字列を読み上げる際、特定の場合に不要な空白が空いてしまう問題を修正しました。
3. 「A」など、一部のアルファベットの発音を修正しました。
4. 読み上げ辞書を更新しました。

## 問い合わせ先

本アドオンを利用しての感想やご要望、不具合のご報告などは、以下のメールアドレスまたは掲示板へご連絡ください。

* ACT Laboratory サポート: <support@actlab.org>
* ACT Laboratory 掲示板: <https://actlab.org/bbs/>
