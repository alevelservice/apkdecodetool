.class public Le/b/b/a/a/d/a/c;
.super Ljava/lang/Object;
.source "AppenderManager.java"


# static fields
.field private static c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Le/b/b/a/a/d/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Le/b/b/a/a/d/a/c;


# instance fields
.field private a:Le/b/b/a/a/a/d;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/b/b/a/a/d/a/k;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Le/b/b/a/a/d/a/c;->c:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Le/b/b/a/a/a/d;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Le/b/b/a/a/d/a/c;->b:Ljava/util/List;

    .line 3
    iput-object v11, v0, Le/b/b/a/a/d/a/c;->a:Le/b/b/a/a/a/d;

    .line 4
    sget-object v1, Le/b/b/a/a/d/a/c;->c:Ljava/util/Map;

    new-instance v2, Le/b/b/a/a/d/a/j;

    const-string v3, "autouserbehavor"

    invoke-direct {v2, v11, v3}, Le/b/b/a/a/d/a/j;-><init>(Le/b/b/a/a/a/d;Ljava/lang/String;)V

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v1, Le/b/b/a/a/d/a/c;->c:Ljava/util/Map;

    new-instance v2, Le/b/b/a/a/d/a/j;

    const-string v3, "userbehavor"

    invoke-direct {v2, v11, v3}, Le/b/b/a/a/d/a/j;-><init>(Le/b/b/a/a/a/d;Ljava/lang/String;)V

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v1, Le/b/b/a/a/d/a/c;->c:Ljava/util/Map;

    new-instance v2, Le/b/b/a/a/d/a/j;

    const-string v3, "pageMonitor"

    invoke-direct {v2, v11, v3}, Le/b/b/a/a/d/a/j;-><init>(Le/b/b/a/a/a/d;Ljava/lang/String;)V

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v1, Le/b/b/a/a/d/a/c;->c:Ljava/util/Map;

    new-instance v2, Le/b/b/a/a/d/a/j;

    const-string v3, "performance"

    invoke-direct {v2, v11, v3}, Le/b/b/a/a/d/a/j;-><init>(Le/b/b/a/a/a/d;Ljava/lang/String;)V

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v1, Le/b/b/a/a/d/a/c;->c:Ljava/util/Map;

    new-instance v2, Le/b/b/a/a/d/a/j;

    const-string v3, "alivereport"

    invoke-direct {v2, v11, v3}, Le/b/b/a/a/d/a/j;-><init>(Le/b/b/a/a/a/d;Ljava/lang/String;)V

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v1, Le/b/b/a/a/d/a/c;->c:Ljava/util/Map;

    new-instance v2, Le/b/b/a/a/d/a/j;

    const-string v3, "crash"

    invoke-direct {v2, v11, v3}, Le/b/b/a/a/d/a/j;-><init>(Le/b/b/a/a/a/d;Ljava/lang/String;)V

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v12, Le/b/b/a/a/d/a/c;->c:Ljava/util/Map;

    new-instance v13, Le/b/b/a/a/d/a/d;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v14, 0x1

    .line 11
    invoke-virtual {v1, v14, v15}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    sget-object v1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v8, 0x7

    invoke-virtual {v1, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    const-string v3, "applog"

    const-wide/32 v16, 0x1e00000

    const/high16 v10, 0x10000

    move-object v1, v13

    move-object/from16 v2, p1

    move-wide/from16 v8, v16

    invoke-direct/range {v1 .. v10}, Le/b/b/a/a/d/a/d;-><init>(Le/b/b/a/a/a/d;Ljava/lang/String;JJJI)V

    const-string v1, "applog"

    .line 12
    invoke-interface {v12, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object v12, Le/b/b/a/a/d/a/c;->c:Ljava/util/Map;

    new-instance v13, Le/b/b/a/a/d/a/g;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    .line 14
    invoke-virtual {v1, v14, v15}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    sget-object v1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x7

    .line 15
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    const-string v3, "unknown"

    const-wide/32 v8, 0x1400000

    move-object v1, v13

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v10}, Le/b/b/a/a/d/a/g;-><init>(Le/b/b/a/a/a/d;Ljava/lang/String;JJJI)V

    const-string v1, "unknown"

    .line 16
    invoke-interface {v12, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Le/b/b/a/a/a/d;)Le/b/b/a/a/d/a/c;
    .locals 1

    .line 1
    sget-object v0, Le/b/b/a/a/d/a/c;->d:Le/b/b/a/a/d/a/c;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Le/b/b/a/a/d/a/c;

    invoke-direct {v0, p0}, Le/b/b/a/a/d/a/c;-><init>(Le/b/b/a/a/a/d;)V

    sput-object v0, Le/b/b/a/a/d/a/c;->d:Le/b/b/a/a/d/a/c;

    .line 3
    :cond_0
    sget-object p0, Le/b/b/a/a/d/a/c;->d:Le/b/b/a/a/d/a/c;

    return-object p0
.end method

.method public static c()Le/b/b/a/a/d/a/c;
    .locals 2

    .line 1
    sget-object v0, Le/b/b/a/a/d/a/c;->d:Le/b/b/a/a/d/a/c;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "need createInstance before use"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 18
    sget-object v0, Le/b/b/a/a/d/a/c;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 19
    sget-object v2, Le/b/b/a/a/d/a/c;->c:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/b/b/a/a/d/a/b;

    invoke-virtual {v1}, Le/b/b/a/a/d/a/b;->b()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Le/b/b/a/a/b/d;)V
    .locals 5

    if-eqz p1, :cond_6

    .line 11
    invoke-virtual {p1}, Le/b/b/a/a/b/d;->e()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 12
    :cond_0
    invoke-virtual {p1}, Le/b/b/a/a/b/d;->e()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    .line 13
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x3b7e1fab

    const/4 v4, 0x1

    if-eq v2, v3, :cond_2

    const v3, 0x5d03b04

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "flush"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const-string v2, "flushByType"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    :goto_0
    if-eqz v1, :cond_5

    if-eq v1, v4, :cond_4

    goto :goto_1

    .line 14
    :cond_4
    invoke-virtual {p1}, Le/b/b/a/a/b/d;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/b/b/a/a/d/a/c;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 15
    :cond_5
    invoke-virtual {p0}, Le/b/b/a/a/d/a/c;->a()V

    :cond_6
    :goto_1
    return-void
.end method

.method public a(Le/b/b/a/a/d/c$c;)V
    .locals 5
    .param p1    # Le/b/b/a/a/d/c$c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 4
    sget-object v0, Le/b/b/a/a/d/a/c;->c:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p1}, Le/b/b/a/a/d/c$c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 6
    sget-object v0, Le/b/b/a/a/d/a/c;->c:Ljava/util/Map;

    invoke-virtual {p1}, Le/b/b/a/a/d/c$c;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Le/b/b/a/a/d/a/j;

    iget-object v3, p0, Le/b/b/a/a/d/a/c;->a:Le/b/b/a/a/a/d;

    invoke-virtual {p1}, Le/b/b/a/a/d/c$c;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Le/b/b/a/a/d/a/j;-><init>(Le/b/b/a/a/a/d;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_0
    sget-object v0, Le/b/b/a/a/d/a/c;->c:Ljava/util/Map;

    invoke-virtual {p1}, Le/b/b/a/a/d/c$c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/b/b/a/a/d/a/b;

    invoke-virtual {p1}, Le/b/b/a/a/d/c$c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/b/b/a/a/d/a/b;->b(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Le/b/b/a/a/d/a/c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 9
    :goto_0
    iget-object v1, p0, Le/b/b/a/a/d/a/c;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 10
    iget-object v1, p0, Le/b/b/a/a/d/a/c;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/b/b/a/a/d/a/k;

    invoke-virtual {p1}, Le/b/b/a/a/d/c$c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Le/b/b/a/a/d/a/k;->a(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 16
    sget-object v0, Le/b/b/a/a/d/a/c;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    sget-object v0, Le/b/b/a/a/d/a/c;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/b/b/a/a/d/a/b;

    invoke-virtual {p1}, Le/b/b/a/a/d/a/b;->b()V

    :cond_0
    return-void
.end method

.method public b()Le/b/b/a/a/d/a/d;
    .locals 2

    .line 1
    sget-object v0, Le/b/b/a/a/d/a/c;->c:Ljava/util/Map;

    const-string v1, "applog"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/b/b/a/a/d/a/b;

    .line 2
    instance-of v1, v0, Le/b/b/a/a/d/a/d;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Le/b/b/a/a/d/a/d;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
