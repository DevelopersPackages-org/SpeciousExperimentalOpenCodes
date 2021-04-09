# jer 形式仕様書

正式名称: Regulations Articles Schema File  
拡張子: .ras  
種別: 条項形式スキーマ  
説明: 差分
補足:

## 記法

```ras
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

```
