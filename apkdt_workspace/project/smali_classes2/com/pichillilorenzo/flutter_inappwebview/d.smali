.class public Lcom/pichillilorenzo/flutter_inappwebview/d;
.super Ljava/lang/Object;
.source "CredentialDatabaseHandler.java"

# interfaces
.implements Lg/a/c/a/k$c;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    api = 0x1a
.end annotation


# static fields
.field public static e:Lg/a/c/a/k;

.field public static f:Lcom/pichillilorenzo/flutter_inappwebview/c/c;


# direct methods
.method public constructor <init>(Lg/a/c/a/c;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lg/a/c/a/k;

    const-string v1, "com.pichillilorenzo/flutter_inappwebview_credential_database"

    invoke-direct {v0, p1, v1}, Lg/a/c/a/k;-><init>(Lg/a/c/a/c;Ljava/lang/String;)V

    sput-object v0, Lcom/pichillilorenzo/flutter_inappwebview/d;->e:Lg/a/c/a/k;

    .line 3
    sget-object p1, Lcom/pichillilorenzo/flutter_inappwebview/d;->e:Lg/a/c/a/k;

    invoke-virtual {p1, p0}, Lg/a/c/a/k;->a(Lg/a/c/a/k$c;)V

    .line 4
    sget-object p1, Lcom/pichillilorenzo/flutter_inappwebview/q;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/pichillilorenzo/flutter_inappwebview/c/c;->a(Landroid/content/Context;)Lcom/pichillilorenzo/flutter_inappwebview/c/c;

    move-result-object p1

    sput-object p1, Lcom/pichillilorenzo/flutter_inappwebview/d;->f:Lcom/pichillilorenzo/flutter_inappwebview/c/c;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    sget-object v0, Lcom/pichillilorenzo/flutter_inappwebview/d;->e:Lg/a/c/a/k;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lg/a/c/a/k;->a(Lg/a/c/a/k$c;)V

    return-void
.end method

.method public onMethodCall(Lg/a/c/a/j;Lg/a/c/a/k$d;)V
    .locals 21

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 1
    iget-object v2, v0, Lg/a/c/a/j;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "getAllAuthCredentials"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :sswitch_1
    const-string v3, "removeHttpAuthCredentials"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_1

    :sswitch_2
    const-string v3, "setHttpAuthCredential"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    goto :goto_1

    :sswitch_3
    const-string v3, "removeHttpAuthCredential"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    goto :goto_1

    :sswitch_4
    const-string v3, "getHttpAuthCredentials"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :sswitch_5
    const-string v3, "clearAllAuthCredentials"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v2, -0x1

    :goto_1
    if-eqz v2, :cond_7

    const-string v3, "port"

    const-string v10, "realm"

    const-string v11, "protocol"

    const-string v12, "host"

    if-eq v2, v8, :cond_5

    const-string v8, "password"

    const-string v13, "username"

    if-eq v2, v7, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v5, :cond_2

    if-eq v2, v4, :cond_1

    .line 2
    invoke-interface/range {p2 .. p2}, Lg/a/c/a/k$d;->a()V

    goto/16 :goto_5

    .line 3
    :cond_1
    sget-object v0, Lcom/pichillilorenzo/flutter_inappwebview/d;->f:Lcom/pichillilorenzo/flutter_inappwebview/c/c;

    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview/c/c;->a()V

    .line 4
    sget-object v0, Lcom/pichillilorenzo/flutter_inappwebview/q;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/webkit/WebViewDatabase;->getInstance(Landroid/content/Context;)Landroid/webkit/WebViewDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebViewDatabase;->clearHttpAuthUsernamePassword()V

    .line 5
    invoke-interface {v1, v9}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 6
    :cond_2
    invoke-virtual {v0, v12}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v11}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v10}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 9
    invoke-virtual {v0, v3}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 10
    sget-object v3, Lcom/pichillilorenzo/flutter_inappwebview/d;->f:Lcom/pichillilorenzo/flutter_inappwebview/c/c;

    invoke-virtual {v3, v2, v4, v5, v0}, Lcom/pichillilorenzo/flutter_inappwebview/c/c;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 11
    invoke-interface {v1, v9}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 12
    :cond_3
    invoke-virtual {v0, v12}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Ljava/lang/String;

    .line 13
    invoke-virtual {v0, v11}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Ljava/lang/String;

    .line 14
    invoke-virtual {v0, v10}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Ljava/lang/String;

    .line 15
    invoke-virtual {v0, v3}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Ljava/lang/Integer;

    .line 16
    invoke-virtual {v0, v13}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Ljava/lang/String;

    .line 17
    invoke-virtual {v0, v8}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Ljava/lang/String;

    .line 18
    sget-object v14, Lcom/pichillilorenzo/flutter_inappwebview/d;->f:Lcom/pichillilorenzo/flutter_inappwebview/c/c;

    invoke-virtual/range {v14 .. v20}, Lcom/pichillilorenzo/flutter_inappwebview/c/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-interface {v1, v9}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 20
    :cond_4
    invoke-virtual {v0, v12}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Ljava/lang/String;

    .line 21
    invoke-virtual {v0, v11}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Ljava/lang/String;

    .line 22
    invoke-virtual {v0, v10}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Ljava/lang/String;

    .line 23
    invoke-virtual {v0, v3}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Ljava/lang/Integer;

    .line 24
    invoke-virtual {v0, v13}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Ljava/lang/String;

    .line 25
    invoke-virtual {v0, v8}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Ljava/lang/String;

    .line 26
    sget-object v14, Lcom/pichillilorenzo/flutter_inappwebview/d;->f:Lcom/pichillilorenzo/flutter_inappwebview/c/c;

    invoke-virtual/range {v14 .. v20}, Lcom/pichillilorenzo/flutter_inappwebview/c/c;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-interface {v1, v9}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 28
    :cond_5
    invoke-virtual {v0, v12}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 29
    invoke-virtual {v0, v11}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 30
    invoke-virtual {v0, v10}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 31
    invoke-virtual {v0, v3}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 32
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 33
    sget-object v6, Lcom/pichillilorenzo/flutter_inappwebview/d;->f:Lcom/pichillilorenzo/flutter_inappwebview/c/c;

    invoke-virtual {v6, v2, v4, v5, v0}, Lcom/pichillilorenzo/flutter_inappwebview/c/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pichillilorenzo/flutter_inappwebview/c/a;

    .line 34
    invoke-virtual {v2}, Lcom/pichillilorenzo/flutter_inappwebview/c/a;->a()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 35
    :cond_6
    invoke-interface {v1, v3}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto :goto_5

    .line 36
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    sget-object v2, Lcom/pichillilorenzo/flutter_inappwebview/d;->f:Lcom/pichillilorenzo/flutter_inappwebview/c/c;

    iget-object v2, v2, Lcom/pichillilorenzo/flutter_inappwebview/c/c;->a:Lcom/pichillilorenzo/flutter_inappwebview/c/f;

    invoke-virtual {v2}, Lcom/pichillilorenzo/flutter_inappwebview/c/f;->a()Ljava/util/List;

    move-result-object v2

    .line 38
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pichillilorenzo/flutter_inappwebview/c/e;

    .line 39
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 40
    sget-object v5, Lcom/pichillilorenzo/flutter_inappwebview/d;->f:Lcom/pichillilorenzo/flutter_inappwebview/c/c;

    iget-object v5, v5, Lcom/pichillilorenzo/flutter_inappwebview/c/c;->b:Lcom/pichillilorenzo/flutter_inappwebview/c/b;

    iget-object v6, v3, Lcom/pichillilorenzo/flutter_inappwebview/c/e;->a:Ljava/lang/Long;

    invoke-virtual {v5, v6}, Lcom/pichillilorenzo/flutter_inappwebview/c/b;->a(Ljava/lang/Long;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/pichillilorenzo/flutter_inappwebview/c/a;

    .line 41
    invoke-virtual {v6}, Lcom/pichillilorenzo/flutter_inappwebview/c/a;->a()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 42
    :cond_8
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 43
    invoke-virtual {v3}, Lcom/pichillilorenzo/flutter_inappwebview/c/e;->a()Ljava/util/Map;

    move-result-object v3

    const-string v6, "protectionSpace"

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "credentials"

    .line 44
    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 46
    :cond_9
    invoke-interface {v1, v0}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    :goto_5
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6e5eaa80 -> :sswitch_5
        -0x187440aa -> :sswitch_4
        0x231e126b -> :sswitch_3
        0x3b8adac9 -> :sswitch_2
        0x40a43b68 -> :sswitch_1
        0x73165e49 -> :sswitch_0
    .end sparse-switch
.end method
