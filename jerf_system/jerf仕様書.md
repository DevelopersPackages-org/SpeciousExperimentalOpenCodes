# jer 形式仕様書

正式名称: Julis Extended Regulations File  
拡張子: .jer  
種別: 規則形式  
説明: 差分
補足: 条項形式スキーマの ras(Regulations Articles Schema)を伴う

## 記法

### ras

ras の記法については[ras 仕様書](./ras仕様書.md)参照。

### jerf

#### ras のインポート

条項形式スキーマの ras(Regulations Articles Schema)を伴う。ras ファイルは her
`%impl`句にてレポジトリパス及び ras ファイルへのレポジトリ内パスを示して ras をインポートする。

```jerf
%impl git:github.com/DevelopersPackages-org/DevPack:lib/jerf/dpreg.ras
```

自らのリポジトリの場合は

```jerf
%impl git:github.com/DevelopersPackages-org/Manage:jerf_system/dpreg.ras
```

のほか、或いは

```jerf
%impl git:github.com/~this:jerf_system/dpreg.ras
```

とリポジトリパスを`~this`で示すことも可能である。

### 文書構成

ハイフン三つに空白を挟んで構成箇所名を記述する。

```jerf
--- header
%title:サンプル規則
%org:サンプル機構
%type:leg
%ras:{
    !type{
        conv:"規約",
        leg:"規則",
        det:"細則",
    }
    %namespace<leg>{
        !lv{
            1:"条",
            2:"項",
            3:"号",
        },
        restart{
            1:none,
            2:1,
            3:2,
        },
    }

}
--- body

--- footer
```

### コメント

コメント文は単行と複数行を提供。単行コメントは半角アスタリスクに続けてコメント文を記述する。複数行はコメント文を半角波括弧で囲む。

```jerf
**単行コメント。行末までコメント。
**{
    複数行コメント。
    ここもコメント。
}

```

### 条項

半角角括弧に半角カンマ区切りで条項レベル(必須)、改行処理法指示記号(必須)、参照記号(任意、ユニーク)を記述する。

```jerf
[lv:1,<+,&uniq] (条見出し)
{
    条文本文
}
```

条文本文内にて他条項を参照する場合は、参照先の参照記号を半角コロンで囲む。

```jerf
[lv:1,&uniq,-] (条見出し)
{
    :uniq: について、～～～～～～
}
```

「前条」「前 3 条」「次条」「次の各号」「次項各号」のような表記は、それぞれ次のように記す。(但し、次の例では条、項、号がそれぞれ第 1 ～第 3 レベルと定義されており、記載内容が条の本文の波括弧内にあるものと仮定する)

```jerf
`prev~lv:1`         **「前条」
`prev$3~lv:1`       **「前3条」
`next~lv:1`         **「次条」

`every~lv:3`のうちのいずれかを満たす～
**「次の各号のうちのいずれかを満たす～」
`next~lv:2*every~lv:3`のすべてを満たす～
**「次項各号のすべてを満たす～」
```

### 改行処理法指示記号

| 優先順位 | 記号 | 説明                       |
| -------: | :--: | -------------------------- |
|        1 |  <   | 段落前改行を 1 行加える    |
|        2 |  +   | 段落内部の行間改行をする   |
|        2 |  -   | 段落内部の行間改行をしない |
|        3 |  >   | 段落後改行を 1 行加える    |

優先順位は記述する順番を示す。`+`及び`-`は一か所につきどちらかしか選択出来ない。デフォルトは`+`。

## Legal Editor for Politics
