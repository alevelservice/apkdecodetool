.class public Le/i/b/a/i/r;
.super Ljava/lang/Object;
.source "TransportRuntime.java"

# interfaces
.implements Le/i/b/a/i/q;


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static volatile e:Le/i/b/a/i/s;


# instance fields
.field private final a:Lcom/google/android/datatransport/runtime/time/a;

.field private final b:Lcom/google/android/datatransport/runtime/time/a;

.field private final c:Le/i/b/a/i/w/e;

.field private final d:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/m;


# direct methods
.method constructor <init>(Lcom/google/android/datatransport/runtime/time/a;Lcom/google/android/datatransport/runtime/time/a;Le/i/b/a/i/w/e;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/m;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/q;)V
    .locals 0
    .param p1    # Lcom/google/android/datatransport/runtime/time/a;
        .annotation build Lcom/google/android/datatransport/runtime/time/WallTime;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/datatransport/runtime/time/a;
        .annotation build Lcom/google/android/datatransport/runtime/time/Monotonic;
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/i/b/a/i/r;->a:Lcom/google/android/datatransport/runtime/time/a;

    .line 3
    iput-object p2, p0, Le/i/b/a/i/r;->b:Lcom/google/android/datatransport/runtime/time/a;

    .line 4
    iput-object p3, p0, Le/i/b/a/i/r;->c:Le/i/b/a/i/w/e;

    .line 5
    iput-object p4, p0, Le/i/b/a/i/r;->d:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/m;

    .line 6
    invoke-virtual {p5}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/q;->a()V

    return-void
.end method

.method private a(Le/i/b/a/i/l;)Le/i/b/a/i/h;
    .locals 4

    .line 19
    invoke-static {}, Le/i/b/a/i/h;->i()Le/i/b/a/i/h$a;

    move-result-object v0

    iget-object v1, p0, Le/i/b/a/i/r;->a:Lcom/google/android/datatransport/runtime/time/a;

    .line 20
    invoke-interface {v1}, Lcom/google/android/datatransport/runtime/time/a;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Le/i/b/a/i/h$a;->a(J)Le/i/b/a/i/h$a;

    iget-object v1, p0, Le/i/b/a/i/r;->b:Lcom/google/android/datatransport/runtime/time/a;

    .line 21
    invoke-interface {v1}, Lcom/google/android/datatransport/runtime/time/a;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Le/i/b/a/i/h$a;->b(J)Le/i/b/a/i/h$a;

    .line 22
    invoke-virtual {p1}, Le/i/b/a/i/l;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/i/b/a/i/h$a;->a(Ljava/lang/String;)Le/i/b/a/i/h$a;

    new-instance v1, Le/i/b/a/i/g;

    .line 23
    invoke-virtual {p1}, Le/i/b/a/i/l;->a()Le/i/b/a/b;

    move-result-object v2

    invoke-virtual {p1}, Le/i/b/a/i/l;->c()[B

    move-result-object v3

    invoke-direct {v1, v2, v3}, Le/i/b/a/i/g;-><init>(Le/i/b/a/b;[B)V

    invoke-virtual {v0, v1}, Le/i/b/a/i/h$a;->a(Le/i/b/a/i/g;)Le/i/b/a/i/h$a;

    .line 24
    invoke-virtual {p1}, Le/i/b/a/i/l;->b()Le/i/b/a/c;

    move-result-object p1

    invoke-virtual {p1}, Le/i/b/a/c;->a()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Le/i/b/a/i/h$a;->a(Ljava/lang/Integer;)Le/i/b/a/i/h$a;

    .line 25
    invoke-virtual {v0}, Le/i/b/a/i/h$a;->a()Le/i/b/a/i/h;

    move-result-object p1

    return-object p1
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .line 1
    sget-object v0, Le/i/b/a/i/r;->e:Le/i/b/a/i/s;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Le/i/b/a/i/r;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Le/i/b/a/i/r;->e:Le/i/b/a/i/s;

    if-nez v1, :cond_0

    .line 4
    invoke-static {}, Le/i/b/a/i/d;->k()Le/i/b/a/i/s$a;

    move-result-object v1

    .line 5
    invoke-interface {v1, p0}, Le/i/b/a/i/s$a;->a(Landroid/content/Context;)Le/i/b/a/i/s$a;

    .line 6
    invoke-interface {v1}, Le/i/b/a/i/s$a;->a()Le/i/b/a/i/s;

    move-result-object p0

    sput-object p0, Le/i/b/a/i/r;->e:Le/i/b/a/i/s;

    .line 7
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static b()Le/i/b/a/i/r;
    .locals 2

    .line 1
    sget-object v0, Le/i/b/a/i/r;->e:Le/i/b/a/i/s;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Le/i/b/a/i/s;->j()Le/i/b/a/i/r;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static b(Le/i/b/a/i/e;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/i/b/a/i/e;",
            ")",
            "Ljava/util/Set<",
            "Le/i/b/a/b;",
            ">;"
        }
    .end annotation

    .line 4
    instance-of v0, p0, Le/i/b/a/i/f;

    if-eqz v0, :cond_0

    .line 5
    check-cast p0, Le/i/b/a/i/f;

    .line 6
    invoke-interface {p0}, Le/i/b/a/i/f;->a()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "proto"

    .line 7
    invoke-static {p0}, Le/i/b/a/b;->a(Ljava/lang/String;)Le/i/b/a/b;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/m;
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$a;->LIBRARY:Landroidx/annotation/RestrictTo$a;
        }
    .end annotation

    .line 14
    iget-object v0, p0, Le/i/b/a/i/r;->d:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/m;

    return-object v0
.end method

.method public a(Le/i/b/a/i/e;)Le/i/b/a/g;
    .locals 4

    .line 8
    new-instance v0, Le/i/b/a/i/n;

    .line 9
    invoke-static {p1}, Le/i/b/a/i/r;->b(Le/i/b/a/i/e;)Ljava/util/Set;

    move-result-object v1

    .line 10
    invoke-static {}, Le/i/b/a/i/m;->d()Le/i/b/a/i/m$a;

    move-result-object v2

    .line 11
    invoke-interface {p1}, Le/i/b/a/i/e;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Le/i/b/a/i/m$a;->a(Ljava/lang/String;)Le/i/b/a/i/m$a;

    .line 12
    invoke-interface {p1}, Le/i/b/a/i/e;->getExtras()[B

    move-result-object p1

    invoke-virtual {v2, p1}, Le/i/b/a/i/m$a;->a([B)Le/i/b/a/i/m$a;

    .line 13
    invoke-virtual {v2}, Le/i/b/a/i/m$a;->a()Le/i/b/a/i/m;

    move-result-object p1

    invoke-direct {v0, v1, p1, p0}, Le/i/b/a/i/n;-><init>(Ljava/util/Set;Le/i/b/a/i/m;Le/i/b/a/i/q;)V

    return-object v0
.end method

.method public a(Le/i/b/a/i/l;Le/i/b/a/h;)V
    .locals 3

    .line 15
    iget-object v0, p0, Le/i/b/a/i/r;->c:Le/i/b/a/i/w/e;

    .line 16
    invoke-virtual {p1}, Le/i/b/a/i/l;->e()Le/i/b/a/i/m;

    move-result-object v1

    invoke-virtual {p1}, Le/i/b/a/i/l;->b()Le/i/b/a/c;

    move-result-object v2

    invoke-virtual {v2}, Le/i/b/a/c;->c()Le/i/b/a/d;

    move-result-object v2

    invoke-virtual {v1, v2}, Le/i/b/a/i/m;->a(Le/i/b/a/d;)Le/i/b/a/i/m;

    move-result-object v1

    .line 17
    invoke-direct {p0, p1}, Le/i/b/a/i/r;->a(Le/i/b/a/i/l;)Le/i/b/a/i/h;

    move-result-object p1

    .line 18
    invoke-interface {v0, v1, p1, p2}, Le/i/b/a/i/w/e;->a(Le/i/b/a/i/m;Le/i/b/a/i/h;Le/i/b/a/h;)V

    return-void
.end method
