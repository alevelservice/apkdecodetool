.class public abstract Le/b/b/a/a/b/c/a;
.super Le/b/b/a/a/b/b;
.source "AbTestLog.java"


# instance fields
.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/b/b/a/a/b/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Le/b/b/a/a/b/c/a;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Le/b/b/a/a/b/c/a;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {}, Le/b/b/a/a/d/i;->a()Le/b/b/a/a/a/d;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1}, Le/b/b/a/a/b/b;->d()Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 5
    invoke-virtual {p1}, Le/b/b/a/a/b/b;->d()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "abTestInfo"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 6
    :cond_3
    invoke-static {}, Le/b/b/a/a/d/i;->a()Le/b/b/a/a/a/d;

    move-result-object v1

    invoke-interface {v1}, Le/b/b/a/a/a/d;->o()Le/b/b/a/a/a/a/a;

    move-result-object v1

    if-nez v1, :cond_4

    .line 7
    invoke-virtual {p1, v0}, Le/b/b/a/a/b/c/a;->a(Ljava/lang/String;)V

    return-void

    .line 8
    :cond_4
    invoke-virtual {p1}, Le/b/b/a/a/b/c/a;->f()Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    return-void

    .line 10
    :cond_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 11
    invoke-interface {v1, v2}, Le/b/b/a/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 12
    :cond_6
    invoke-virtual {p1, v0}, Le/b/b/a/a/b/c/a;->a(Ljava/lang/String;)V

    .line 13
    invoke-interface {v1, v2}, Le/b/b/a/a/a/a/a;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    if-nez p1, :cond_7

    return-void

    .line 14
    :cond_7
    invoke-virtual {p0, p1}, Le/b/b/a/a/b/b;->a(Ljava/util/Map;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/b/b/a/a/b/c/a;->c:Ljava/lang/String;

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/b/b/a/a/b/c/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public abstract f()Ljava/lang/String;
.end method
