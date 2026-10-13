.class final Lio/flutter/plugins/urllauncher/a;
.super Ljava/lang/Object;
.source "MethodCallHandlerImpl.java"

# interfaces
.implements Lg/a/c/a/k$c;


# instance fields
.field private final e:Lio/flutter/plugins/urllauncher/b;

.field private f:Lg/a/c/a/k;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/flutter/plugins/urllauncher/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/flutter/plugins/urllauncher/a;->e:Lio/flutter/plugins/urllauncher/b;

    return-void
.end method

.method private static a(Ljava/util/Map;)Landroid/os/Bundle;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .line 24
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 25
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 26
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 27
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private a(Lg/a/c/a/j;Lg/a/c/a/k$d;Ljava/lang/String;)V
    .locals 7

    const-string v0, "useWebView"

    .line 9
    invoke-virtual {p1, v0}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const-string v0, "enableJavaScript"

    .line 10
    invoke-virtual {p1, v0}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const-string v0, "enableDomStorage"

    .line 11
    invoke-virtual {p1, v0}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const-string v0, "headers"

    .line 12
    invoke-virtual {p1, v0}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 13
    invoke-static {p1}, Lio/flutter/plugins/urllauncher/a;->a(Ljava/util/Map;)Landroid/os/Bundle;

    move-result-object v3

    .line 14
    iget-object v1, p0, Lio/flutter/plugins/urllauncher/a;->e:Lio/flutter/plugins/urllauncher/b;

    move-object v2, p3

    .line 15
    invoke-virtual/range {v1 .. v6}, Lio/flutter/plugins/urllauncher/b;->a(Ljava/lang/String;Landroid/os/Bundle;ZZZ)Lio/flutter/plugins/urllauncher/b$a;

    move-result-object p1

    .line 16
    sget-object v0, Lio/flutter/plugins/urllauncher/b$a;->NO_ACTIVITY:Lio/flutter/plugins/urllauncher/b$a;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    const-string p1, "NO_ACTIVITY"

    const-string p3, "Launching a URL requires a foreground activity."

    .line 17
    invoke-interface {p2, p1, p3, v1}, Lg/a/c/a/k$d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 18
    :cond_0
    sget-object v0, Lio/flutter/plugins/urllauncher/b$a;->ACTIVITY_NOT_FOUND:Lio/flutter/plugins/urllauncher/b$a;

    const/4 v2, 0x1

    if-ne p1, v0, :cond_1

    new-array p1, v2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p3, p1, v0

    const-string p3, "No Activity found to handle intent { %s }"

    .line 19
    invoke-static {p3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "ACTIVITY_NOT_FOUND"

    .line 20
    invoke-interface {p2, p3, p1, v1}, Lg/a/c/a/k$d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 21
    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, p1}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private a(Lg/a/c/a/k$d;)V
    .locals 1

    .line 22
    iget-object v0, p0, Lio/flutter/plugins/urllauncher/a;->e:Lio/flutter/plugins/urllauncher/b;

    invoke-virtual {v0}, Lio/flutter/plugins/urllauncher/b;->a()V

    const/4 v0, 0x0

    .line 23
    invoke-interface {p1, v0}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    return-void
.end method

.method private a(Lg/a/c/a/k$d;Ljava/lang/String;)V
    .locals 1

    .line 8
    iget-object v0, p0, Lio/flutter/plugins/urllauncher/a;->e:Lio/flutter/plugins/urllauncher/b;

    invoke-virtual {v0, p2}, Lio/flutter/plugins/urllauncher/b;->a(Ljava/lang/String;)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, p2}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .line 5
    iget-object v0, p0, Lio/flutter/plugins/urllauncher/a;->f:Lg/a/c/a/k;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lg/a/c/a/k;->a(Lg/a/c/a/k$c;)V

    .line 7
    iput-object v1, p0, Lio/flutter/plugins/urllauncher/a;->f:Lg/a/c/a/k;

    return-void
.end method

.method a(Lg/a/c/a/c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/urllauncher/a;->f:Lg/a/c/a/k;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/flutter/plugins/urllauncher/a;->a()V

    .line 3
    :cond_0
    new-instance v0, Lg/a/c/a/k;

    const-string v1, "plugins.flutter.io/url_launcher"

    invoke-direct {v0, p1, v1}, Lg/a/c/a/k;-><init>(Lg/a/c/a/c;Ljava/lang/String;)V

    iput-object v0, p0, Lio/flutter/plugins/urllauncher/a;->f:Lg/a/c/a/k;

    .line 4
    iget-object p1, p0, Lio/flutter/plugins/urllauncher/a;->f:Lg/a/c/a/k;

    invoke-virtual {p1, p0}, Lg/a/c/a/k;->a(Lg/a/c/a/k$c;)V

    return-void
.end method

.method public onMethodCall(Lg/a/c/a/j;Lg/a/c/a/k$d;)V
    .locals 6

    const-string v0, "url"

    .line 1
    invoke-virtual {p1, v0}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2
    iget-object v1, p1, Lg/a/c/a/j;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x4226dc4d

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v2, v3, :cond_2

    const v3, -0xb0b8c5d

    if-eq v2, v3, :cond_1

    const v3, -0x73fbcff

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "closeWebView"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    goto :goto_1

    :cond_1
    const-string v2, "canLaunch"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const-string v2, "launch"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, -0x1

    :goto_1
    if-eqz v1, :cond_6

    if-eq v1, v5, :cond_5

    if-eq v1, v4, :cond_4

    .line 3
    invoke-interface {p2}, Lg/a/c/a/k$d;->a()V

    goto :goto_2

    .line 4
    :cond_4
    invoke-direct {p0, p2}, Lio/flutter/plugins/urllauncher/a;->a(Lg/a/c/a/k$d;)V

    goto :goto_2

    .line 5
    :cond_5
    invoke-direct {p0, p1, p2, v0}, Lio/flutter/plugins/urllauncher/a;->a(Lg/a/c/a/j;Lg/a/c/a/k$d;Ljava/lang/String;)V

    goto :goto_2

    .line 6
    :cond_6
    invoke-direct {p0, p2, v0}, Lio/flutter/plugins/urllauncher/a;->a(Lg/a/c/a/k$d;Ljava/lang/String;)V

    :goto_2
    return-void
.end method
