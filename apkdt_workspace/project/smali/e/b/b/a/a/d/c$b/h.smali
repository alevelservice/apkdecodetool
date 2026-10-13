.class public Le/b/b/a/a/d/c$b/h;
.super Ljava/lang/Object;
.source "MasSPMLog.java"

# interfaces
.implements Le/b/b/a/a/d/c$b/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/b/b/a/a/d/c$b/e<",
        "Le/b/b/a/a/b/c/f;",
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
    iput-object p1, p0, Le/b/b/a/a/d/c$b/h;->a:Le/b/b/a/a/a/d;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Le/b/b/a/a/b/b;)Ljava/lang/String;
    .locals 0

    .line 1
    check-cast p1, Le/b/b/a/a/b/c/f;

    invoke-virtual {p0, p1}, Le/b/b/a/a/d/c$b/h;->a(Le/b/b/a/a/b/c/f;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Le/b/b/a/a/b/c/f;)Ljava/lang/String;
    .locals 6

    .line 2
    invoke-virtual {p1, p1}, Le/b/b/a/a/b/c/a;->a(Le/b/b/a/a/b/c/a;)V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "D-VM"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-static {}, Le/b/b/a/a/e/j;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget-object v1, p0, Le/b/b/a/a/d/c$b/h;->a:Le/b/b/a/a/a/d;

    invoke-interface {v1}, Le/b/b/a/a/a/d;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    iget-object v1, p0, Le/b/b/a/a/d/c$b/h;->a:Le/b/b/a/a/a/d;

    invoke-interface {v1}, Le/b/b/a/a/a/d;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "2"

    .line 8
    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    iget-object v1, p0, Le/b/b/a/a/d/c$b/h;->a:Le/b/b/a/a/a/d;

    invoke-interface {v1}, Le/b/b/a/a/a/d;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    iget-object v1, p0, Le/b/b/a/a/d/c$b/h;->a:Le/b/b/a/a/a/d;

    invoke-interface {v1}, Le/b/b/a/a/a/d;->r()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-object v1, p0, Le/b/b/a/a/d/c$b/h;->a:Le/b/b/a/a/a/d;

    invoke-interface {v1}, Le/b/b/a/a/a/d;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "pageMonitor"

    .line 12
    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {p1}, Le/b/b/a/a/b/c/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {p1}, Le/b/b/a/a/b/c/f;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    .line 15
    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {p1}, Le/b/b/a/a/b/c/f;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {p1}, Le/b/b/a/a/b/c/f;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "behavior"

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Le/b/b/a/a/b/c/f;->h()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {v0, v2}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "c"

    .line 22
    invoke-static {v0, v2}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {p1}, Le/b/b/a/a/b/c/f;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {p1}, Le/b/b/a/a/b/c/f;->g()Le/b/b/a/a/b/c/e;

    move-result-object v2

    invoke-virtual {v2}, Le/b/b/a/a/b/c/e;->c()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 25
    invoke-virtual {p1}, Le/b/b/a/a/b/c/f;->g()Le/b/b/a/a/b/c/e;

    move-result-object v2

    invoke-virtual {v2}, Le/b/b/a/a/b/c/e;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 26
    :try_start_0
    invoke-virtual {p1}, Le/b/b/a/a/b/c/f;->g()Le/b/b/a/a/b/c/e;

    move-result-object v2

    invoke-virtual {v2}, Le/b/b/a/a/b/c/e;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 27
    invoke-virtual {p1}, Le/b/b/a/a/b/c/f;->g()Le/b/b/a/a/b/c/e;

    move-result-object v4

    invoke-virtual {v4}, Le/b/b/a/a/b/c/e;->a()Ljava/lang/String;

    move-result-object v4

    .line 28
    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 29
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    goto :goto_1

    .line 30
    :cond_1
    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    :goto_1
    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {p1}, Le/b/b/a/a/b/b;->d()Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v0, v2}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/util/Map;)Ljava/lang/StringBuilder;

    .line 33
    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {p1}, Le/b/b/a/a/b/c/f;->g()Le/b/b/a/a/b/c/e;

    move-result-object v2

    invoke-virtual {v2}, Le/b/b/a/a/b/c/e;->c()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 35
    invoke-virtual {p1}, Le/b/b/a/a/b/c/f;->g()Le/b/b/a/a/b/c/e;

    move-result-object v2

    invoke-virtual {v2}, Le/b/b/a/a/b/c/e;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 36
    :try_start_1
    invoke-virtual {p1}, Le/b/b/a/a/b/c/f;->g()Le/b/b/a/a/b/c/e;

    move-result-object v2

    invoke-virtual {v2}, Le/b/b/a/a/b/c/e;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 37
    invoke-virtual {p1}, Le/b/b/a/a/b/c/f;->g()Le/b/b/a/a/b/c/e;

    move-result-object v4

    invoke-virtual {v4}, Le/b/b/a/a/b/c/e;->a()Ljava/lang/String;

    move-result-object v4

    .line 38
    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 39
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    nop

    goto :goto_2

    .line 40
    :cond_2
    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    :goto_2
    iget-object v2, p0, Le/b/b/a/a/d/c$b/h;->a:Le/b/b/a/a/a/d;

    invoke-interface {v2}, Le/b/b/a/a/a/d;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {p1}, Le/b/b/a/a/b/c/f;->g()Le/b/b/a/a/b/c/e;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Le/b/b/a/a/b/c/f;->g()Le/b/b/a/a/b/c/e;

    move-result-object v2

    invoke-virtual {v2}, Le/b/b/a/a/b/c/e;->b()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 44
    invoke-virtual {p1}, Le/b/b/a/a/b/c/f;->g()Le/b/b/a/a/b/c/e;

    move-result-object v2

    invoke-virtual {v2}, Le/b/b/a/a/b/c/e;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 45
    :cond_3
    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    :goto_3
    invoke-virtual {p1}, Le/b/b/a/a/b/c/f;->g()Le/b/b/a/a/b/c/e;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Le/b/b/a/a/b/c/f;->g()Le/b/b/a/a/b/c/e;

    move-result-object v2

    invoke-virtual {v2}, Le/b/b/a/a/b/c/e;->d()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 47
    invoke-virtual {p1}, Le/b/b/a/a/b/c/f;->g()Le/b/b/a/a/b/c/e;

    move-result-object v2

    invoke-virtual {v2}, Le/b/b/a/a/b/c/e;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 48
    :cond_4
    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    :goto_4
    invoke-virtual {p1}, Le/b/b/a/a/b/c/f;->g()Le/b/b/a/a/b/c/e;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Le/b/b/a/a/b/c/f;->g()Le/b/b/a/a/b/c/e;

    move-result-object v2

    invoke-virtual {v2}, Le/b/b/a/a/b/c/e;->e()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 50
    invoke-virtual {p1}, Le/b/b/a/a/b/c/f;->g()Le/b/b/a/a/b/c/e;

    move-result-object p1

    invoke-virtual {p1}, Le/b/b/a/a/b/c/e;->e()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 51
    :cond_5
    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    :goto_5
    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3e8

    .line 54
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v0, p1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    sget-object p1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v0, p1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    iget-object p1, p0, Le/b/b/a/a/d/c$b/h;->a:Le/b/b/a/a/a/d;

    invoke-interface {p1}, Le/b/b/a/a/a/d;->a()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Le/b/b/a/a/e/l;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    iget-object p1, p0, Le/b/b/a/a/d/c$b/h;->a:Le/b/b/a/a/a/d;

    invoke-interface {p1}, Le/b/b/a/a/a/d;->g()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    iget-object p1, p0, Le/b/b/a/a/d/c$b/h;->a:Le/b/b/a/a/a/d;

    invoke-interface {p1}, Le/b/b/a/a/a/d;->s()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    iget-object p1, p0, Le/b/b/a/a/d/c$b/h;->a:Le/b/b/a/a/a/d;

    invoke-interface {p1}, Le/b/b/a/a/a/d;->l()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-static {}, Le/b/b/a/a/e/f;->a()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-static {}, Le/b/b/a/a/e/f;->b()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    iget-object p1, p0, Le/b/b/a/a/d/c$b/h;->a:Le/b/b/a/a/a/d;

    invoke-interface {p1}, Le/b/b/a/a/a/d;->a()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Le/b/b/a/a/e/f;->a(Landroid/content/Context;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    iget-object p1, p0, Le/b/b/a/a/d/c$b/h;->a:Le/b/b/a/a/a/d;

    invoke-interface {p1}, Le/b/b/a/a/a/d;->k()Ljava/util/Map;

    move-result-object p1

    invoke-static {v0, p1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/util/Map;)Ljava/lang/StringBuilder;

    .line 66
    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-static {}, Le/b/b/a/a/e/j;->d()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-static {}, Le/b/b/a/a/d/i;->b()Le/b/b/a/a/a/f;

    move-result-object p1

    invoke-interface {p1}, Le/b/b/a/a/a/f;->d()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "$$"

    .line 70
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
