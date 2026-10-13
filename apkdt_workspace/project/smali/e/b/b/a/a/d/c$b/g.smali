.class public Le/b/b/a/a/d/c$b/g;
.super Ljava/lang/Object;
.source "MasPerformanceLog.java"

# interfaces
.implements Le/b/b/a/a/d/c$b/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/b/b/a/a/d/c$b/e<",
        "Le/b/b/a/a/b/g/b;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Le/b/b/a/a/a/d;


# direct methods
.method public constructor <init>(Le/b/b/a/a/a/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/b/b/a/a/d/c$b/g;->a:Le/b/b/a/a/a/d;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Le/b/b/a/a/b/b;)Ljava/lang/String;
    .locals 0

    .line 1
    check-cast p1, Le/b/b/a/a/b/g/b;

    invoke-virtual {p0, p1}, Le/b/b/a/a/d/c$b/g;->a(Le/b/b/a/a/b/g/b;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Le/b/b/a/a/b/g/b;)Ljava/lang/String;
    .locals 4

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "D-MM"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-static {}, Le/b/b/a/a/e/j;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-object v1, p0, Le/b/b/a/a/d/c$b/g;->a:Le/b/b/a/a/a/d;

    invoke-interface {v1}, Le/b/b/a/a/a/d;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget-object v1, p0, Le/b/b/a/a/d/c$b/g;->a:Le/b/b/a/a/a/d;

    invoke-interface {v1}, Le/b/b/a/a/a/d;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "2"

    .line 7
    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    iget-object v1, p0, Le/b/b/a/a/d/c$b/g;->a:Le/b/b/a/a/a/d;

    invoke-interface {v1}, Le/b/b/a/a/a/d;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    iget-object v1, p0, Le/b/b/a/a/d/c$b/g;->a:Le/b/b/a/a/a/d;

    invoke-interface {v1}, Le/b/b/a/a/a/d;->r()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    iget-object v1, p0, Le/b/b/a/a/d/c$b/g;->a:Le/b/b/a/a/a/d;

    invoke-interface {v1}, Le/b/b/a/a/a/d;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    .line 11
    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3e8

    .line 13
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {p1}, Le/b/b/a/a/b/g/b;->k()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 15
    invoke-virtual {p1}, Le/b/b/a/a/b/g/b;->i()Le/b/b/a/a/b/g/a;

    move-result-object v2

    invoke-virtual {v2}, Le/b/b/a/a/b/g/a;->getDes()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p1}, Le/b/b/a/a/b/g/b;->k()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    :goto_0
    invoke-virtual {p1}, Le/b/b/a/a/b/g/b;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {p1}, Le/b/b/a/a/b/g/b;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {p1}, Le/b/b/a/a/b/g/b;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {p1}, Le/b/b/a/a/b/g/b;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {p1}, Le/b/b/a/a/b/b;->d()Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v0, v2}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/util/Map;)Ljava/lang/StringBuilder;

    const-string v2, "android"

    .line 22
    invoke-static {v0, v2}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v0, v2}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    iget-object v2, p0, Le/b/b/a/a/d/c$b/g;->a:Le/b/b/a/a/a/d;

    invoke-interface {v2}, Le/b/b/a/a/a/d;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Le/b/b/a/a/e/l;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v0, v2}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    iget-object v2, p0, Le/b/b/a/a/d/c$b/g;->a:Le/b/b/a/a/a/d;

    invoke-interface {v2}, Le/b/b/a/a/a/d;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    iget-object v2, p0, Le/b/b/a/a/d/c$b/g;->a:Le/b/b/a/a/a/d;

    invoke-interface {v2}, Le/b/b/a/a/a/d;->l()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-static {}, Le/b/b/a/a/e/f;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-static {}, Le/b/b/a/a/e/f;->b()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    iget-object v2, p0, Le/b/b/a/a/d/c$b/g;->a:Le/b/b/a/a/a/d;

    invoke-interface {v2}, Le/b/b/a/a/a/d;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Le/b/b/a/a/e/f;->a(Landroid/content/Context;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    iget-object v2, p0, Le/b/b/a/a/d/c$b/g;->a:Le/b/b/a/a/a/d;

    invoke-interface {v2}, Le/b/b/a/a/a/d;->k()Ljava/util/Map;

    move-result-object v2

    invoke-static {v0, v2}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/util/Map;)Ljava/lang/StringBuilder;

    .line 36
    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-static {}, Le/b/b/a/a/e/j;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-static {}, Le/b/b/a/a/d/i;->b()Le/b/b/a/a/a/f;

    move-result-object v1

    invoke-interface {v1}, Le/b/b/a/a/a/f;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {p1}, Le/b/b/a/a/b/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {p1}, Le/b/b/a/a/b/g/b;->j()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "$$"

    .line 42
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
