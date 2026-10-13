.class public Lio/flutter/embedding/engine/i/m$b;
.super Ljava/lang/Object;
.source "TextInputChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/engine/i/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/embedding/engine/i/m$b$a;
    }
.end annotation


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:Z

.field public final d:Lio/flutter/embedding/engine/i/m$d;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final e:Lio/flutter/embedding/engine/i/m$c;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final f:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final g:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final h:Lio/flutter/embedding/engine/i/m$b$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final i:[Lio/flutter/embedding/engine/i/m$b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZZZLio/flutter/embedding/engine/i/m$d;Lio/flutter/embedding/engine/i/m$c;Ljava/lang/Integer;Ljava/lang/String;Lio/flutter/embedding/engine/i/m$b$a;[Lio/flutter/embedding/engine/i/m$b;)V
    .locals 0
    .param p4    # Lio/flutter/embedding/engine/i/m$d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lio/flutter/embedding/engine/i/m$c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Lio/flutter/embedding/engine/i/m$b$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # [Lio/flutter/embedding/engine/i/m$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lio/flutter/embedding/engine/i/m$b;->a:Z

    .line 3
    iput-boolean p2, p0, Lio/flutter/embedding/engine/i/m$b;->b:Z

    .line 4
    iput-boolean p3, p0, Lio/flutter/embedding/engine/i/m$b;->c:Z

    .line 5
    iput-object p4, p0, Lio/flutter/embedding/engine/i/m$b;->d:Lio/flutter/embedding/engine/i/m$d;

    .line 6
    iput-object p5, p0, Lio/flutter/embedding/engine/i/m$b;->e:Lio/flutter/embedding/engine/i/m$c;

    .line 7
    iput-object p6, p0, Lio/flutter/embedding/engine/i/m$b;->f:Ljava/lang/Integer;

    .line 8
    iput-object p7, p0, Lio/flutter/embedding/engine/i/m$b;->g:Ljava/lang/String;

    .line 9
    iput-object p8, p0, Lio/flutter/embedding/engine/i/m$b;->h:Lio/flutter/embedding/engine/i/m$b$a;

    .line 10
    iput-object p9, p0, Lio/flutter/embedding/engine/i/m$b;->i:[Lio/flutter/embedding/engine/i/m$b;

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lio/flutter/embedding/engine/i/m$b;
    .locals 15
    .param p0    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "inputAction"

    .line 1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v1, "fields"

    .line 2
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 3
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v2, v2, [Lio/flutter/embedding/engine/i/m$b;

    const/4 v4, 0x0

    .line 5
    :goto_0
    array-length v5, v2

    if-ge v4, v5, :cond_0

    .line 6
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v5}, Lio/flutter/embedding/engine/i/m$b;->a(Lorg/json/JSONObject;)Lio/flutter/embedding/engine/i/m$b;

    move-result-object v5

    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    move-object v14, v2

    goto :goto_1

    :cond_1
    move-object v14, v3

    .line 7
    :goto_1
    invoke-static {v0}, Lio/flutter/embedding/engine/i/m$b;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    .line 8
    new-instance v0, Lio/flutter/embedding/engine/i/m$b;

    const-string v1, "obscureText"

    .line 9
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v6

    const/4 v1, 0x1

    const-string v2, "autocorrect"

    .line 10
    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v7

    const-string v1, "enableSuggestions"

    .line 11
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v8

    const-string v1, "textCapitalization"

    .line 12
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/flutter/embedding/engine/i/m$d;->fromValue(Ljava/lang/String;)Lio/flutter/embedding/engine/i/m$d;

    move-result-object v9

    const-string v1, "inputType"

    .line 13
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lio/flutter/embedding/engine/i/m$c;->a(Lorg/json/JSONObject;)Lio/flutter/embedding/engine/i/m$c;

    move-result-object v10

    const-string v1, "actionLabel"

    .line 14
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v12, v3

    goto :goto_2

    :cond_2
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v12, v1

    :goto_2
    const-string v1, "autofill"

    .line 15
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {p0}, Lio/flutter/embedding/engine/i/m$b$a;->a(Lorg/json/JSONObject;)Lio/flutter/embedding/engine/i/m$b$a;

    move-result-object v3

    :goto_3
    move-object v13, v3

    move-object v5, v0

    invoke-direct/range {v5 .. v14}, Lio/flutter/embedding/engine/i/m$b;-><init>(ZZZLio/flutter/embedding/engine/i/m$d;Lio/flutter/embedding/engine/i/m$c;Ljava/lang/Integer;Ljava/lang/String;Lio/flutter/embedding/engine/i/m$b$a;[Lio/flutter/embedding/engine/i/m$b;)V

    return-object v0

    .line 16
    :cond_4
    new-instance p0, Lorg/json/JSONException;

    const-string v0, "Configuration JSON missing \'inputAction\' property."

    invoke-direct {p0, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw p0

    :goto_5
    goto :goto_4
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 11
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 17
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x7

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x6

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "TextInputAction.previous"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x8

    goto :goto_1

    :sswitch_1
    const-string v0, "TextInputAction.newline"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :sswitch_2
    const-string v0, "TextInputAction.go"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    goto :goto_1

    :sswitch_3
    const-string v0, "TextInputAction.search"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x5

    goto :goto_1

    :sswitch_4
    const-string v0, "TextInputAction.send"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x6

    goto :goto_1

    :sswitch_5
    const-string v0, "TextInputAction.none"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_1

    :sswitch_6
    const-string v0, "TextInputAction.next"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x7

    goto :goto_1

    :sswitch_7
    const-string v0, "TextInputAction.done"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_1

    :sswitch_8
    const-string v0, "TextInputAction.unspecified"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, -0x1

    :goto_1
    packed-switch p0, :pswitch_data_0

    return-object v10

    .line 18
    :pswitch_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 19
    :pswitch_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 20
    :pswitch_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 21
    :pswitch_3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 22
    :pswitch_4
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 23
    :pswitch_5
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_6
    return-object v10

    :pswitch_7
    return-object v8

    :sswitch_data_0
    .sparse-switch
        -0x30567324 -> :sswitch_8
        -0x2bf37e83 -> :sswitch_7
        -0x2bef1712 -> :sswitch_6
        -0x2beef2cd -> :sswitch_5
        -0x2becd27d -> :sswitch_4
        0x1bf830e3 -> :sswitch_3
        0x4a02ada3 -> :sswitch_2
        0x5bc225b9 -> :sswitch_1
        0x7dcba372 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
