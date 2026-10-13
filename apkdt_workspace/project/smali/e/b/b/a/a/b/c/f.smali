.class public Le/b/b/a/a/b/c/f;
.super Le/b/b/a/a/b/c/a;
.source "SPMLog.java"


# instance fields
.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Le/b/b/a/a/b/c/e;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Le/b/b/a/a/b/c/a;-><init>()V

    const-string v0, "pageMonitor"

    .line 2
    iput-object v0, p0, Le/b/b/a/a/b/c/f;->d:Ljava/lang/String;

    .line 3
    invoke-direct {p0}, Le/b/b/a/a/b/c/f;->j()V

    .line 4
    iput-object p1, p0, Le/b/b/a/a/b/c/f;->e:Ljava/lang/String;

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Le/b/b/a/a/e/i;->a(J)Ljava/lang/String;

    move-result-object v0

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Le/b/b/a/a/e/p;->a:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-static {}, Le/b/b/a/a/d/i;->a()Le/b/b/a/a/a/d;

    move-result-object p1

    invoke-interface {p1}, Le/b/b/a/a/a/d;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Le/b/b/a/a/e/p;->a:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 8
    iget-object v0, p0, Le/b/b/a/a/b/c/f;->f:Le/b/b/a/a/b/c/e;

    invoke-virtual {v0, p1}, Le/b/b/a/a/b/c/e;->b(Ljava/lang/String;)V

    .line 9
    invoke-static {}, Le/b/b/a/a/d/i;->a()Le/b/b/a/a/a/d;

    move-result-object v0

    invoke-interface {v0, p1}, Le/b/b/a/a/a/d;->c(Ljava/lang/String;)V

    return-void
.end method

.method private j()V
    .locals 4

    .line 1
    new-instance v0, Le/b/b/a/a/b/c/e;

    invoke-direct {v0}, Le/b/b/a/a/b/c/e;-><init>()V

    iput-object v0, p0, Le/b/b/a/a/b/c/f;->f:Le/b/b/a/a/b/c/e;

    .line 2
    invoke-virtual {p0}, Le/b/b/a/a/b/b;->b()V

    .line 3
    iget-object v0, p0, Le/b/b/a/a/b/c/f;->f:Le/b/b/a/a/b/c/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/b/b/a/a/b/c/e;->a(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Le/b/b/a/a/d/i;->a()Le/b/b/a/a/a/d;

    move-result-object v0

    invoke-interface {v0}, Le/b/b/a/a/a/d;->n()Ljava/lang/String;

    move-result-object v0

    .line 5
    iget-object v1, p0, Le/b/b/a/a/b/c/f;->f:Le/b/b/a/a/b/c/e;

    invoke-virtual {v1, v0}, Le/b/b/a/a/b/c/e;->d(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/b/b/a/a/b/c/f;->d:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/b/b/a/a/b/c/f;->f:Le/b/b/a/a/b/c/e;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Le/b/b/a/a/b/c/e;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/b/b/a/a/b/c/f;->f:Le/b/b/a/a/b/c/e;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Le/b/b/a/a/b/c/e;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/b/b/a/a/b/c/f;->g:Ljava/lang/String;

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/b/b/a/a/b/c/f;->h:Ljava/lang/String;

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/b/b/a/a/b/c/f;->e:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, Le/b/b/a/a/b/c/f;->f:Le/b/b/a/a/b/c/e;

    invoke-virtual {v0, p1}, Le/b/b/a/a/b/c/e;->b(Ljava/lang/String;)V

    return-void
.end method

.method public g()Le/b/b/a/a/b/c/e;
    .locals 1

    .line 1
    iget-object v0, p0, Le/b/b/a/a/b/c/f;->f:Le/b/b/a/a/b/c/e;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/b/b/a/a/b/c/f;->g:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/b/b/a/a/b/c/f;->h:Ljava/lang/String;

    return-object v0
.end method
