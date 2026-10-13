.class public Le/b/b/a/a/d/d/c;
.super Ljava/lang/Object;
.source "TraceLoggerImpl.java"

# interfaces
.implements Le/b/b/a/a/d/d/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Le/b/b/a/a/d/d/c;->a()Z

    move-result v0

    .line 9
    invoke-static {}, Le/b/b/a/a/d/i;->a()Le/b/b/a/a/a/d;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 10
    :cond_1
    new-instance v0, Le/b/b/a/a/b/f;

    sget-object v1, Le/b/b/a/a/a/c;->ERROR:Le/b/b/a/a/a/c;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, p2, v2}, Le/b/b/a/a/b/f;-><init>(Ljava/lang/String;Le/b/b/a/a/a/c;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    invoke-static {}, Le/b/b/a/a/d/i;->a()Le/b/b/a/a/a/d;

    move-result-object p1

    invoke-interface {p1, v0}, Le/b/b/a/a/a/d;->a(Le/b/b/a/a/b/b;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Le/b/b/a/a/d/d/c;->a()Z

    move-result v0

    .line 4
    invoke-static {}, Le/b/b/a/a/d/i;->a()Le/b/b/a/a/a/d;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 5
    :cond_1
    new-instance v0, Le/b/b/a/a/b/f;

    sget-object v1, Le/b/b/a/a/a/c;->WARN:Le/b/b/a/a/a/c;

    invoke-direct {v0, p1, v1, p2, p3}, Le/b/b/a/a/b/f;-><init>(Ljava/lang/String;Le/b/b/a/a/a/c;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    invoke-static {}, Le/b/b/a/a/d/i;->a()Le/b/b/a/a/a/d;

    move-result-object p1

    invoke-interface {p1, v0}, Le/b/b/a/a/a/d;->a(Le/b/b/a/a/b/b;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .line 12
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 13
    :cond_0
    invoke-virtual {p0}, Le/b/b/a/a/d/d/c;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 15
    :cond_1
    invoke-static {}, Le/b/b/a/a/d/i;->a()Le/b/b/a/a/a/d;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 16
    :cond_2
    invoke-static {p2}, Le/b/b/a/a/e/j;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 17
    new-instance v1, Le/b/b/a/a/b/f;

    sget-object v2, Le/b/b/a/a/a/c;->ERROR:Le/b/b/a/a/a/c;

    invoke-direct {v1, p1, v2, v0, p2}, Le/b/b/a/a/b/f;-><init>(Ljava/lang/String;Le/b/b/a/a/a/c;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 18
    invoke-static {}, Le/b/b/a/a/d/i;->a()Le/b/b/a/a/a/d;

    move-result-object p1

    invoke-interface {p1, v1}, Le/b/b/a/a/a/d;->a(Le/b/b/a/a/b/b;)V

    return-void
.end method

.method public a()Z
    .locals 1

    .line 1
    invoke-static {}, Le/b/b/a/a/e/j;->b()Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Le/b/b/a/a/d/d/c;->a()Z

    move-result v0

    .line 3
    invoke-static {}, Le/b/b/a/a/d/i;->a()Le/b/b/a/a/a/d;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    new-instance v0, Le/b/b/a/a/b/f;

    sget-object v1, Le/b/b/a/a/a/c;->WARN:Le/b/b/a/a/a/c;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, p2, v2}, Le/b/b/a/a/b/f;-><init>(Ljava/lang/String;Le/b/b/a/a/a/c;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    invoke-static {}, Le/b/b/a/a/d/i;->a()Le/b/b/a/a/a/d;

    move-result-object p1

    invoke-interface {p1, v0}, Le/b/b/a/a/a/d;->a(Le/b/b/a/a/b/b;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 12
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 13
    :cond_0
    invoke-virtual {p0}, Le/b/b/a/a/d/d/c;->a()Z

    move-result v0

    .line 14
    invoke-static {}, Le/b/b/a/a/d/i;->a()Le/b/b/a/a/a/d;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 15
    :cond_1
    new-instance v0, Le/b/b/a/a/b/f;

    sget-object v1, Le/b/b/a/a/a/c;->ERROR:Le/b/b/a/a/a/c;

    invoke-direct {v0, p1, v1, p2, p3}, Le/b/b/a/a/b/f;-><init>(Ljava/lang/String;Le/b/b/a/a/a/c;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    invoke-static {}, Le/b/b/a/a/d/i;->a()Le/b/b/a/a/a/d;

    move-result-object p1

    invoke-interface {p1, v0}, Le/b/b/a/a/a/d;->a(Le/b/b/a/a/b/b;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 7
    :cond_0
    invoke-virtual {p0}, Le/b/b/a/a/d/d/c;->a()Z

    move-result v0

    .line 8
    invoke-static {}, Le/b/b/a/a/d/i;->a()Le/b/b/a/a/a/d;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 9
    :cond_1
    invoke-static {p2}, Le/b/b/a/a/e/j;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 10
    new-instance v1, Le/b/b/a/a/b/f;

    sget-object v2, Le/b/b/a/a/a/c;->WARN:Le/b/b/a/a/a/c;

    invoke-direct {v1, p1, v2, v0, p2}, Le/b/b/a/a/b/f;-><init>(Ljava/lang/String;Le/b/b/a/a/a/c;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    invoke-static {}, Le/b/b/a/a/d/i;->a()Le/b/b/a/a/a/d;

    move-result-object p1

    invoke-interface {p1, v1}, Le/b/b/a/a/a/d;->a(Le/b/b/a/a/b/b;)V

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Le/b/b/a/a/d/d/c;->a()Z

    move-result v0

    .line 3
    invoke-static {}, Le/b/b/a/a/d/i;->a()Le/b/b/a/a/a/d;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    new-instance v0, Le/b/b/a/a/b/f;

    sget-object v1, Le/b/b/a/a/a/c;->DEBUG:Le/b/b/a/a/a/c;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, p2, v2}, Le/b/b/a/a/b/f;-><init>(Ljava/lang/String;Le/b/b/a/a/a/c;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    invoke-static {}, Le/b/b/a/a/d/i;->a()Le/b/b/a/a/a/d;

    move-result-object p1

    invoke-interface {p1, v0}, Le/b/b/a/a/a/d;->a(Le/b/b/a/a/b/b;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Le/b/b/a/a/d/d/c;->a()Z

    move-result v0

    .line 3
    invoke-static {}, Le/b/b/a/a/d/i;->a()Le/b/b/a/a/a/d;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    new-instance v0, Le/b/b/a/a/b/f;

    sget-object v1, Le/b/b/a/a/a/c;->VERBOSE:Le/b/b/a/a/a/c;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, p2, v2}, Le/b/b/a/a/b/f;-><init>(Ljava/lang/String;Le/b/b/a/a/a/c;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    invoke-static {}, Le/b/b/a/a/d/i;->a()Le/b/b/a/a/a/d;

    move-result-object p1

    invoke-interface {p1, v0}, Le/b/b/a/a/a/d;->a(Le/b/b/a/a/b/b;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Le/b/b/a/a/d/d/c;->a()Z

    move-result v0

    .line 3
    invoke-static {}, Le/b/b/a/a/d/i;->a()Le/b/b/a/a/a/d;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    new-instance v0, Le/b/b/a/a/b/f;

    sget-object v1, Le/b/b/a/a/a/c;->INFO:Le/b/b/a/a/a/c;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, p2, v2}, Le/b/b/a/a/b/f;-><init>(Ljava/lang/String;Le/b/b/a/a/a/c;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    invoke-static {}, Le/b/b/a/a/d/i;->a()Le/b/b/a/a/a/d;

    move-result-object p1

    invoke-interface {p1, v0}, Le/b/b/a/a/a/d;->a(Le/b/b/a/a/b/b;)V

    :cond_2
    :goto_0
    return-void
.end method
