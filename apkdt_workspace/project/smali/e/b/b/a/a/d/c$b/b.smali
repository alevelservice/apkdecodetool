.class public Le/b/b/a/a/d/c$b/b;
.super Ljava/lang/Object;
.source "MasApmLog.java"

# interfaces
.implements Le/b/b/a/a/d/c$b/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/b/b/a/a/d/c$b/e<",
        "Le/b/b/a/a/b/a/a;",
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
    iput-object p1, p0, Le/b/b/a/a/d/c$b/b;->a:Le/b/b/a/a/a/d;

    return-void
.end method


# virtual methods
.method public a(Le/b/b/a/a/b/a/a;)Ljava/lang/String;
    .locals 5

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "D-EM"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-static {}, Le/b/b/a/a/e/j;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-object v1, p0, Le/b/b/a/a/d/c$b/b;->a:Le/b/b/a/a/a/d;

    invoke-interface {v1}, Le/b/b/a/a/a/d;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget-object v1, p0, Le/b/b/a/a/d/c$b/b;->a:Le/b/b/a/a/a/d;

    invoke-interface {v1}, Le/b/b/a/a/a/d;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "2"

    .line 7
    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    iget-object v1, p0, Le/b/b/a/a/d/c$b/b;->a:Le/b/b/a/a/a/d;

    invoke-interface {v1}, Le/b/b/a/a/a/d;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    iget-object v1, p0, Le/b/b/a/a/d/c$b/b;->a:Le/b/b/a/a/a/d;

    invoke-interface {v1}, Le/b/b/a/a/a/d;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    iget-object v1, p0, Le/b/b/a/a/d/c$b/b;->a:Le/b/b/a/a/a/d;

    invoke-interface {v1}, Le/b/b/a/a/a/d;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Le/b/b/a/a/e/l;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    .line 13
    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {p1}, Le/b/b/a/a/b/a/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {p1}, Le/b/b/a/a/b/a/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {p1}, Le/b/b/a/a/b/a/a;->g()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 20
    invoke-virtual {p1}, Le/b/b/a/a/b/b;->d()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {p1}, Le/b/b/a/a/b/a/a;->g()Ljava/lang/Throwable;

    move-result-object v3

    invoke-static {v3}, Le/b/b/a/a/e/j;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "stackFrame"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    :cond_0
    invoke-virtual {p1}, Le/b/b/a/a/b/b;->d()Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v0, v2}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/util/Map;)Ljava/lang/StringBuilder;

    .line 22
    iget-object v2, p0, Le/b/b/a/a/d/c$b/b;->a:Le/b/b/a/a/a/d;

    invoke-interface {v2}, Le/b/b/a/a/a/d;->l()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-static {}, Le/b/b/a/a/e/f;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-static {}, Le/b/b/a/a/e/f;->b()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget-object v2, p0, Le/b/b/a/a/d/c$b/b;->a:Le/b/b/a/a/a/d;

    invoke-interface {v2}, Le/b/b/a/a/a/d;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Le/b/b/a/a/e/f;->a(Landroid/content/Context;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    .line 27
    invoke-static {v0, v2}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-static {}, Le/b/b/a/a/d/i;->b()Le/b/b/a/a/a/f;

    move-result-object v1

    invoke-interface {v1}, Le/b/b/a/a/a/f;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    iget-object v1, p0, Le/b/b/a/a/d/c$b/b;->a:Le/b/b/a/a/a/d;

    invoke-interface {v1}, Le/b/b/a/a/a/d;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    iget-object v1, p0, Le/b/b/a/a/d/c$b/b;->a:Le/b/b/a/a/a/d;

    invoke-interface {v1}, Le/b/b/a/a/a/d;->k()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/util/Map;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {p1}, Le/b/b/a/a/b/b;->c()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "$$"

    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Le/b/b/a/a/b/b;)Ljava/lang/String;
    .locals 0

    .line 1
    check-cast p1, Le/b/b/a/a/b/a/a;

    invoke-virtual {p0, p1}, Le/b/b/a/a/d/c$b/b;->a(Le/b/b/a/a/b/a/a;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
