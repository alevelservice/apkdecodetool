.class public Lcom/pichillilorenzo/flutter_inappwebview/k;
.super Ljava/lang/Object;
.source "MyWebStorage.java"

# interfaces
.implements Lg/a/c/a/k$c;


# static fields
.field public static e:Lg/a/c/a/k;

.field public static f:Landroid/webkit/WebStorage;


# direct methods
.method public constructor <init>(Lg/a/c/a/c;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lg/a/c/a/k;

    const-string v1, "com.pichillilorenzo/flutter_inappwebview_webstoragemanager"

    invoke-direct {v0, p1, v1}, Lg/a/c/a/k;-><init>(Lg/a/c/a/c;Ljava/lang/String;)V

    sput-object v0, Lcom/pichillilorenzo/flutter_inappwebview/k;->e:Lg/a/c/a/k;

    .line 3
    sget-object p1, Lcom/pichillilorenzo/flutter_inappwebview/k;->e:Lg/a/c/a/k;

    invoke-virtual {p1, p0}, Lg/a/c/a/k;->a(Lg/a/c/a/k$c;)V

    .line 4
    invoke-static {}, Landroid/webkit/WebStorage;->getInstance()Landroid/webkit/WebStorage;

    move-result-object p1

    sput-object p1, Lcom/pichillilorenzo/flutter_inappwebview/k;->f:Landroid/webkit/WebStorage;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 3
    sget-object v0, Lcom/pichillilorenzo/flutter_inappwebview/k;->e:Lg/a/c/a/k;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lg/a/c/a/k;->a(Lg/a/c/a/k$c;)V

    return-void
.end method

.method public a(Lg/a/c/a/k$d;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/pichillilorenzo/flutter_inappwebview/k;->f:Landroid/webkit/WebStorage;

    new-instance v1, Lcom/pichillilorenzo/flutter_inappwebview/k$a;

    invoke-direct {v1, p0, p1}, Lcom/pichillilorenzo/flutter_inappwebview/k$a;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/k;Lg/a/c/a/k$d;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebStorage;->getOrigins(Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lg/a/c/a/k$d;)V
    .locals 2

    .line 2
    sget-object v0, Lcom/pichillilorenzo/flutter_inappwebview/k;->f:Landroid/webkit/WebStorage;

    new-instance v1, Lcom/pichillilorenzo/flutter_inappwebview/k$b;

    invoke-direct {v1, p0, p2}, Lcom/pichillilorenzo/flutter_inappwebview/k$b;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/k;Lg/a/c/a/k$d;)V

    invoke-virtual {v0, p1, v1}, Landroid/webkit/WebStorage;->getQuotaForOrigin(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public b(Ljava/lang/String;Lg/a/c/a/k$d;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/pichillilorenzo/flutter_inappwebview/k;->f:Landroid/webkit/WebStorage;

    new-instance v1, Lcom/pichillilorenzo/flutter_inappwebview/k$c;

    invoke-direct {v1, p0, p2}, Lcom/pichillilorenzo/flutter_inappwebview/k$c;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/k;Lg/a/c/a/k$d;)V

    invoke-virtual {v0, p1, v1}, Landroid/webkit/WebStorage;->getUsageForOrigin(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public onMethodCall(Lg/a/c/a/j;Lg/a/c/a/k$d;)V
    .locals 7

    .line 1
    iget-object v0, p1, Lg/a/c/a/j;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "getUsageForOrigin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_1
    const-string v1, "getOrigins"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_2
    const-string v1, "deleteOrigin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string v1, "deleteAllData"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_4
    const-string v1, "getQuotaForOrigin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_5

    if-eq v0, v5, :cond_4

    const-string v1, "origin"

    if-eq v0, v4, :cond_3

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    .line 2
    invoke-interface {p2}, Lg/a/c/a/k$d;->a()V

    goto :goto_2

    .line 3
    :cond_1
    invoke-virtual {p1, v1}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/pichillilorenzo/flutter_inappwebview/k;->b(Ljava/lang/String;Lg/a/c/a/k$d;)V

    goto :goto_2

    .line 5
    :cond_2
    invoke-virtual {p1, v1}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/pichillilorenzo/flutter_inappwebview/k;->a(Ljava/lang/String;Lg/a/c/a/k$d;)V

    goto :goto_2

    .line 7
    :cond_3
    invoke-virtual {p1, v1}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 8
    sget-object v0, Lcom/pichillilorenzo/flutter_inappwebview/k;->f:Landroid/webkit/WebStorage;

    invoke-virtual {v0, p1}, Landroid/webkit/WebStorage;->deleteOrigin(Ljava/lang/String;)V

    .line 9
    invoke-interface {p2, v6}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto :goto_2

    .line 10
    :cond_4
    sget-object p1, Lcom/pichillilorenzo/flutter_inappwebview/k;->f:Landroid/webkit/WebStorage;

    invoke-virtual {p1}, Landroid/webkit/WebStorage;->deleteAllData()V

    .line 11
    invoke-interface {p2, v6}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto :goto_2

    .line 12
    :cond_5
    invoke-virtual {p0, p2}, Lcom/pichillilorenzo/flutter_inappwebview/k;->a(Lg/a/c/a/k$d;)V

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4dfedd53 -> :sswitch_4
        -0x429a6f40 -> :sswitch_3
        -0x34410b4f -> :sswitch_2
        -0x9de8e29 -> :sswitch_1
        0x3243e1a4 -> :sswitch_0
    .end sparse-switch
.end method
