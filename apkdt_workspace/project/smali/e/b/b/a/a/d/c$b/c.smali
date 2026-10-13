.class public Le/b/b/a/a/d/c$b/c;
.super Ljava/lang/Object;
.source "MasAutoBehaviourLog.java"

# interfaces
.implements Le/b/b/a/a/d/c$b/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/b/b/a/a/d/c$b/e<",
        "Le/b/b/a/a/b/c/c;",
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
    iput-object p1, p0, Le/b/b/a/a/d/c$b/c;->a:Le/b/b/a/a/a/d;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Le/b/b/a/a/b/b;)Ljava/lang/String;
    .locals 0

    .line 1
    check-cast p1, Le/b/b/a/a/b/c/c;

    invoke-virtual {p0, p1}, Le/b/b/a/a/d/c$b/c;->a(Le/b/b/a/a/b/c/c;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Le/b/b/a/a/b/c/c;)Ljava/lang/String;
    .locals 8

    .line 2
    invoke-static {}, Le/b/b/a/a/d/i;->c()Le/b/b/a/a/d/d/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "last page:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Le/b/b/a/a/b/c/c;->g()Le/b/b/a/a/b/c/e;

    move-result-object v2

    invoke-virtual {v2}, Le/b/b/a/a/b/c/e;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MasAutoBehaviourLog"

    invoke-interface {v0, v2, v1}, Le/b/b/a/a/d/d/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1, p1}, Le/b/b/a/a/b/c/a;->a(Le/b/b/a/a/b/c/a;)V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "D-AM"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-static {}, Le/b/b/a/a/e/j;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    iget-object v1, p0, Le/b/b/a/a/d/c$b/c;->a:Le/b/b/a/a/a/d;

    invoke-interface {v1}, Le/b/b/a/a/a/d;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    iget-object v1, p0, Le/b/b/a/a/d/c$b/c;->a:Le/b/b/a/a/a/d;

    invoke-interface {v1}, Le/b/b/a/a/a/d;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "2"

    .line 9
    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    iget-object v1, p0, Le/b/b/a/a/d/c$b/c;->a:Le/b/b/a/a/a/d;

    invoke-interface {v1}, Le/b/b/a/a/a/d;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-object v1, p0, Le/b/b/a/a/d/c$b/c;->a:Le/b/b/a/a/a/d;

    invoke-interface {v1}, Le/b/b/a/a/a/d;->r()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    iget-object v1, p0, Le/b/b/a/a/d/c$b/c;->a:Le/b/b/a/a/a/d;

    invoke-interface {v1}, Le/b/b/a/a/a/d;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {p1}, Le/b/b/a/a/b/c/c;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 14
    invoke-virtual {p1}, Le/b/b/a/a/b/c/c;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "event"

    .line 15
    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    :goto_0
    invoke-virtual {p1}, Le/b/b/a/a/b/c/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {p1}, Le/b/b/a/a/b/c/c;->g()Le/b/b/a/a/b/c/e;

    move-result-object v1

    const-string v2, "-"

    if-eqz v1, :cond_1

    .line 18
    invoke-virtual {p1}, Le/b/b/a/a/b/c/c;->g()Le/b/b/a/a/b/c/e;

    move-result-object v1

    invoke-virtual {v1}, Le/b/b/a/a/b/c/e;->d()Ljava/lang/String;

    move-result-object v1

    .line 19
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Le/b/b/a/a/b/c/c;->g()Le/b/b/a/a/b/c/e;

    move-result-object v3

    invoke-virtual {v3}, Le/b/b/a/a/b/c/e;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Le/b/b/a/a/e/j;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "|"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Le/b/b/a/a/b/c/c;->g()Le/b/b/a/a/b/c/e;

    move-result-object v3

    invoke-virtual {v3}, Le/b/b/a/a/b/c/e;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 21
    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 22
    :cond_1
    invoke-static {v0, v2}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    :goto_1
    invoke-static {v0, v2}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-static {v0, v2}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {p1}, Le/b/b/a/a/b/c/c;->g()Le/b/b/a/a/b/c/e;

    move-result-object v1

    invoke-virtual {v1}, Le/b/b/a/a/b/c/e;->e()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "//"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Le/b/b/a/a/b/c/c;->g()Le/b/b/a/a/b/c/e;

    move-result-object v3

    invoke-virtual {v3}, Le/b/b/a/a/b/c/e;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 27
    :cond_2
    invoke-static {v0, v2}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    :goto_2
    invoke-static {v0, v2}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {p1}, Le/b/b/a/a/b/c/c;->f()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 30
    invoke-virtual {p1}, Le/b/b/a/a/b/c/c;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 31
    :cond_3
    invoke-static {v0, v2}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Le/b/b/a/a/b/c/c;->i()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "autotrack"

    .line 33
    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "c"

    .line 34
    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-static {v0, v2}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-static {v0, v2}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-static {v0, v2}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {p1}, Le/b/b/a/a/b/b;->d()Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/util/Map;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {p1}, Le/b/b/a/a/b/c/c;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {p1}, Le/b/b/a/a/b/c/c;->g()Le/b/b/a/a/b/c/e;

    move-result-object v1

    invoke-virtual {v1}, Le/b/b/a/a/b/c/e;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 41
    invoke-virtual {p1}, Le/b/b/a/a/b/c/c;->g()Le/b/b/a/a/b/c/e;

    move-result-object v1

    invoke-virtual {v1}, Le/b/b/a/a/b/c/e;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 42
    :try_start_0
    invoke-virtual {p1}, Le/b/b/a/a/b/c/c;->g()Le/b/b/a/a/b/c/e;

    move-result-object v1

    invoke-virtual {v1}, Le/b/b/a/a/b/c/e;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 43
    invoke-virtual {p1}, Le/b/b/a/a/b/c/c;->g()Le/b/b/a/a/b/c/e;

    move-result-object v1

    invoke-virtual {v1}, Le/b/b/a/a/b/c/e;->a()Ljava/lang/String;

    move-result-object v1

    .line 44
    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 45
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    nop

    goto :goto_4

    .line 46
    :cond_4
    invoke-static {v0, v2}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    :goto_4
    iget-object v1, p0, Le/b/b/a/a/d/c$b/c;->a:Le/b/b/a/a/a/d;

    invoke-interface {v1}, Le/b/b/a/a/a/d;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-static {v0, v2}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {p1}, Le/b/b/a/a/b/c/c;->g()Le/b/b/a/a/b/c/e;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 50
    invoke-virtual {p1}, Le/b/b/a/a/b/c/c;->g()Le/b/b/a/a/b/c/e;

    move-result-object v1

    invoke-virtual {v1}, Le/b/b/a/a/b/c/e;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 51
    invoke-virtual {p1}, Le/b/b/a/a/b/c/c;->g()Le/b/b/a/a/b/c/e;

    move-result-object v1

    invoke-virtual {v1}, Le/b/b/a/a/b/c/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 52
    :cond_5
    invoke-static {v0, v2}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    :goto_5
    invoke-virtual {p1}, Le/b/b/a/a/b/c/c;->g()Le/b/b/a/a/b/c/e;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 54
    invoke-virtual {p1}, Le/b/b/a/a/b/c/c;->g()Le/b/b/a/a/b/c/e;

    move-result-object v1

    invoke-virtual {v1}, Le/b/b/a/a/b/c/e;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 55
    invoke-virtual {p1}, Le/b/b/a/a/b/c/c;->g()Le/b/b/a/a/b/c/e;

    move-result-object v1

    invoke-virtual {v1}, Le/b/b/a/a/b/c/e;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 56
    :cond_6
    invoke-static {v0, v2}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    :goto_6
    invoke-virtual {p1}, Le/b/b/a/a/b/c/c;->g()Le/b/b/a/a/b/c/e;

    move-result-object v1

    invoke-virtual {v1}, Le/b/b/a/a/b/c/e;->e()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 58
    invoke-virtual {p1}, Le/b/b/a/a/b/c/c;->g()Le/b/b/a/a/b/c/e;

    move-result-object v1

    invoke-virtual {v1}, Le/b/b/a/a/b/c/e;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 59
    :cond_7
    invoke-static {v0, v2}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    :goto_7
    invoke-static {v0, v2}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-static {v0, v2}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "1000"

    .line 62
    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    iget-object v1, p0, Le/b/b/a/a/d/c$b/c;->a:Le/b/b/a/a/a/d;

    invoke-interface {v1}, Le/b/b/a/a/a/d;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Le/b/b/a/a/e/l;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-static {v0, v2}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-static {v0, v2}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    iget-object v1, p0, Le/b/b/a/a/d/c$b/c;->a:Le/b/b/a/a/a/d;

    invoke-interface {v1}, Le/b/b/a/a/a/d;->l()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-static {v0, v2}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-static {}, Le/b/b/a/a/e/f;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-static {}, Le/b/b/a/a/e/f;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    iget-object v1, p0, Le/b/b/a/a/d/c$b/c;->a:Le/b/b/a/a/a/d;

    invoke-interface {v1}, Le/b/b/a/a/a/d;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Le/b/b/a/a/e/f;->a(Landroid/content/Context;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    iget-object v1, p0, Le/b/b/a/a/d/c$b/c;->a:Le/b/b/a/a/a/d;

    invoke-interface {v1}, Le/b/b/a/a/a/d;->k()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/util/Map;)Ljava/lang/StringBuilder;

    .line 74
    invoke-static {v0, v2}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-static {}, Le/b/b/a/a/e/j;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-static {}, Le/b/b/a/a/d/i;->b()Le/b/b/a/a/a/f;

    move-result-object v1

    invoke-interface {v1}, Le/b/b/a/a/a/f;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {p1}, Le/b/b/a/a/b/b;->c()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Le/b/b/a/a/e/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "$$"

    .line 78
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
