.class Lio/flutter/plugins/share/a;
.super Ljava/lang/Object;
.source "MethodCallHandler.java"

# interfaces
.implements Lg/a/c/a/k$c;


# instance fields
.field private e:Lio/flutter/plugins/share/b;


# direct methods
.method constructor <init>(Lio/flutter/plugins/share/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/flutter/plugins/share/a;->e:Lio/flutter/plugins/share/b;

    return-void
.end method

.method private a(Lg/a/c/a/j;)V
    .locals 1

    .line 1
    iget-object p1, p1, Lg/a/c/a/j;->b:Ljava/lang/Object;

    instance-of p1, p1, Ljava/util/Map;

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Map argument expected"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public onMethodCall(Lg/a/c/a/j;Lg/a/c/a/k$d;)V
    .locals 5

    .line 1
    iget-object v0, p1, Lg/a/c/a/j;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x6bf77228

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    const v2, 0x6854fdf

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "share"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const-string v1, "shareFiles"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, -0x1

    :goto_1
    const-string v1, "subject"

    const-string v2, "text"

    const/4 v4, 0x0

    if-eqz v0, :cond_4

    if-eq v0, v3, :cond_3

    .line 2
    invoke-interface {p2}, Lg/a/c/a/k$d;->a()V

    goto :goto_2

    .line 3
    :cond_3
    invoke-direct {p0, p1}, Lio/flutter/plugins/share/a;->a(Lg/a/c/a/j;)V

    const-string v0, "paths"

    .line 4
    invoke-virtual {p1, v0}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v3, "mimeTypes"

    .line 5
    invoke-virtual {p1, v3}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 6
    invoke-virtual {p1, v2}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 7
    invoke-virtual {p1, v1}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 8
    :try_start_0
    iget-object v1, p0, Lio/flutter/plugins/share/a;->e:Lio/flutter/plugins/share/b;

    invoke-virtual {v1, v0, v3, v2, p1}, Lio/flutter/plugins/share/b;->a(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-interface {p2, v4}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1, v4, v4}, Lg/a/c/a/k$d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 11
    :cond_4
    invoke-direct {p0, p1}, Lio/flutter/plugins/share/a;->a(Lg/a/c/a/j;)V

    .line 12
    invoke-virtual {p1, v2}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 13
    invoke-virtual {p1, v1}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 14
    iget-object v1, p0, Lio/flutter/plugins/share/a;->e:Lio/flutter/plugins/share/b;

    invoke-virtual {v1, v0, p1}, Lio/flutter/plugins/share/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-interface {p2, v4}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    :goto_2
    return-void
.end method
