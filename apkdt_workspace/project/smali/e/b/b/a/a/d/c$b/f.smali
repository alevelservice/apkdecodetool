.class public Le/b/b/a/a/d/c$b/f;
.super Ljava/lang/Object;
.source "MasManualBehaviourLog.java"

# interfaces
.implements Le/b/b/a/a/d/c$b/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/b/b/a/a/d/c$b/e<",
        "Le/b/b/a/a/b/c/d;",
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
    iput-object p1, p0, Le/b/b/a/a/d/c$b/f;->a:Le/b/b/a/a/a/d;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Le/b/b/a/a/b/b;)Ljava/lang/String;
    .locals 0

    .line 1
    check-cast p1, Le/b/b/a/a/b/c/d;

    invoke-virtual {p0, p1}, Le/b/b/a/a/d/c$b/f;->a(Le/b/b/a/a/b/c/d;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Le/b/b/a/a/b/c/d;)Ljava/lang/String;
    .locals 8

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
    iget-object v1, p0, Le/b/b/a/a/d/c$b/f;->a:Le/b/b/a/a/a/d;

    invoke-interface {v1}, Le/b/b/a/a/a/d;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    iget-object v1, p0, Le/b/b/a/a/d/c$b/f;->a:Le/b/b/a/a/a/d;

    invoke-interface {v1}, Le/b/b/a/a/a/d;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "2"

    .line 8
    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    iget-object v1, p0, Le/b/b/a/a/d/c$b/f;->a:Le/b/b/a/a/a/d;

    invoke-interface {v1}, Le/b/b/a/a/a/d;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    iget-object v1, p0, Le/b/b/a/a/d/c$b/f;->a:Le/b/b/a/a/a/d;

    invoke-interface {v1}, Le/b/b/a/a/a/d;->r()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-object v1, p0, Le/b/b/a/a/d/c$b/f;->a:Le/b/b/a/a/a/d;

    invoke-interface {v1}, Le/b/b/a/a/a/d;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {p1}, Le/b/b/a/a/b/c/d;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 13
    invoke-virtual {p1}, Le/b/b/a/a/b/c/d;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "event"

    .line 14
    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    :goto_0
    invoke-virtual {p1}, Le/b/b/a/a/b/c/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {p1}, Le/b/b/a/a/b/c/d;->g()Le/b/b/a/a/b/c/e;

    move-result-object v1

    const-string v2, "-"

    if-eqz v1, :cond_1

    .line 17
    invoke-virtual {p1}, Le/b/b/a/a/b/c/d;->g()Le/b/b/a/a/b/c/e;

    move-result-object v1

    invoke-virtual {v1}, Le/b/b/a/a/b/c/e;->d()Ljava/lang/String;

    move-result-object v1

    .line 18
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Le/b/b/a/a/b/c/d;->g()Le/b/b/a/a/b/c/e;

    move-result-object v3

    invoke-virtual {v3}, Le/b/b/a/a/b/c/e;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Le/b/b/a/a/e/j;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "|"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Le/b/b/a/a/b/c/d;->g()Le/b/b/a/a/b/c/e;

    move-result-object v3

    invoke-virtual {v3}, Le/b/b/a/a/b/c/e;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 21
    :cond_1
    invoke-static {v0, v2}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    :goto_1
    invoke-static {v0, v2}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-static {v0, v2}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {p1}, Le/b/b/a/a/b/c/d;->g()Le/b/b/a/a/b/c/e;

    move-result-object v1

    invoke-virtual {v1}, Le/b/b/a/a/b/c/e;->e()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "//"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Le/b/b/a/a/b/c/d;->g()Le/b/b/a/a/b/c/e;

    move-result-object v3

    invoke-virtual {v3}, Le/b/b/a/a/b/c/e;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 26
    :cond_2
    invoke-static {v0, v2}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    :goto_2
    invoke-static {v0, v2}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {p1}, Le/b/b/a/a/b/c/d;->f()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 29
    invoke-virtual {p1}, Le/b/b/a/a/b/c/d;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 30
    :cond_3
    invoke-static {v0, v2}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Le/b/b/a/a/b/c/d;->i()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {p1}, Le/b/b/a/a/b/c/d;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "behavior"

    goto :goto_4

    :cond_4
    invoke-virtual {p1}, Le/b/b/a/a/b/c/d;->k()Ljava/lang/String;

    move-result-object v1

    :goto_4
    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "c"

    .line 33
    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-static {v0, v2}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-static {v0, v2}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-static {v0, v2}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {p1}, Le/b/b/a/a/b/b;->d()Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/util/Map;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {p1}, Le/b/b/a/a/b/c/d;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {p1}, Le/b/b/a/a/b/c/d;->g()Le/b/b/a/a/b/c/e;

    move-result-object v1

    invoke-virtual {v1}, Le/b/b/a/a/b/c/e;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 40
    invoke-virtual {p1}, Le/b/b/a/a/b/c/d;->g()Le/b/b/a/a/b/c/e;

    move-result-object v1

    invoke-virtual {v1}, Le/b/b/a/a/b/c/e;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 41
    :try_start_0
    invoke-virtual {p1}, Le/b/b/a/a/b/c/d;->g()Le/b/b/a/a/b/c/e;

    move-result-object v1

    invoke-virtual {v1}, Le/b/b/a/a/b/c/e;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 42
    invoke-virtual {p1}, Le/b/b/a/a/b/c/d;->g()Le/b/b/a/a/b/c/e;

    move-result-object v1

    invoke-virtual {v1}, Le/b/b/a/a/b/c/e;->a()Ljava/lang/String;

    move-result-object v1

    .line 43
    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 44
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    nop

    goto :goto_5

    .line 45
    :cond_5
    invoke-static {v0, v2}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    :goto_5
    iget-object v1, p0, Le/b/b/a/a/d/c$b/f;->a:Le/b/b/a/a/a/d;

    invoke-interface {v1}, Le/b/b/a/a/a/d;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-static {v0, v2}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {p1}, Le/b/b/a/a/b/c/d;->g()Le/b/b/a/a/b/c/e;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Le/b/b/a/a/b/c/d;->g()Le/b/b/a/a/b/c/e;

    move-result-object v1

    invoke-virtual {v1}, Le/b/b/a/a/b/c/e;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 49
    invoke-virtual {p1}, Le/b/b/a/a/b/c/d;->g()Le/b/b/a/a/b/c/e;

    move-result-object v1

    invoke-virtual {v1}, Le/b/b/a/a/b/c/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 50
    :cond_6
    invoke-static {v0, v2}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    :goto_6
    invoke-virtual {p1}, Le/b/b/a/a/b/c/d;->g()Le/b/b/a/a/b/c/e;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Le/b/b/a/a/b/c/d;->g()Le/b/b/a/a/b/c/e;

    move-result-object v1

    invoke-virtual {v1}, Le/b/b/a/a/b/c/e;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 52
    invoke-virtual {p1}, Le/b/b/a/a/b/c/d;->g()Le/b/b/a/a/b/c/e;

    move-result-object v1

    invoke-virtual {v1}, Le/b/b/a/a/b/c/e;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 53
    :cond_7
    invoke-static {v0, v2}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    :goto_7
    invoke-virtual {p1}, Le/b/b/a/a/b/c/d;->g()Le/b/b/a/a/b/c/e;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {p1}, Le/b/b/a/a/b/c/d;->g()Le/b/b/a/a/b/c/e;

    move-result-object v1

    invoke-virtual {v1}, Le/b/b/a/a/b/c/e;->e()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 55
    invoke-virtual {p1}, Le/b/b/a/a/b/c/d;->g()Le/b/b/a/a/b/c/e;

    move-result-object v1

    invoke-virtual {v1}, Le/b/b/a/a/b/c/e;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 56
    :cond_8
    invoke-static {v0, v2}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    :goto_8
    invoke-static {v0, v2}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-static {v0, v2}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e8

    .line 59
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    iget-object v1, p0, Le/b/b/a/a/d/c$b/f;->a:Le/b/b/a/a/a/d;

    invoke-interface {v1}, Le/b/b/a/a/a/d;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Le/b/b/a/a/e/l;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    iget-object v1, p0, Le/b/b/a/a/d/c$b/f;->a:Le/b/b/a/a/a/d;

    invoke-interface {v1}, Le/b/b/a/a/a/d;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-static {v0, v2}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    iget-object v1, p0, Le/b/b/a/a/d/c$b/f;->a:Le/b/b/a/a/a/d;

    invoke-interface {v1}, Le/b/b/a/a/a/d;->l()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-static {v0, v2}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-static {}, Le/b/b/a/a/e/f;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-static {}, Le/b/b/a/a/e/f;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    iget-object v1, p0, Le/b/b/a/a/d/c$b/f;->a:Le/b/b/a/a/a/d;

    invoke-interface {v1}, Le/b/b/a/a/a/d;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Le/b/b/a/a/e/f;->a(Landroid/content/Context;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    iget-object v1, p0, Le/b/b/a/a/d/c$b/f;->a:Le/b/b/a/a/a/d;

    invoke-interface {v1}, Le/b/b/a/a/a/d;->k()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/util/Map;)Ljava/lang/StringBuilder;

    .line 71
    invoke-static {v0, v2}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-static {}, Le/b/b/a/a/e/j;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-static {}, Le/b/b/a/a/d/i;->b()Le/b/b/a/a/a/f;

    move-result-object v1

    invoke-interface {v1}, Le/b/b/a/a/a/f;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {p1}, Le/b/b/a/a/b/b;->c()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "$$"

    .line 75
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
