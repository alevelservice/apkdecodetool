.class public final Lcom/google/android/gms/common/api/internal/g$a;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.1.0"

# interfaces
.implements Lcom/google/android/gms/common/api/f$a;
.implements Lcom/google/android/gms/common/api/f$b;
.implements Lcom/google/android/gms/common/api/internal/m1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/api/internal/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lcom/google/android/gms/common/api/a$d;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/f$a;",
        "Lcom/google/android/gms/common/api/f$b;",
        "Lcom/google/android/gms/common/api/internal/m1;"
    }
.end annotation


# instance fields
.field private final e:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/google/android/gms/common/api/internal/r0;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/google/android/gms/common/api/a$f;

.field private final g:Lcom/google/android/gms/common/api/a$b;

.field private final h:Lcom/google/android/gms/common/api/internal/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/b<",
            "TO;>;"
        }
    .end annotation
.end field

.field private final i:Lcom/google/android/gms/common/api/internal/n1;

.field private final j:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/internal/g1;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/internal/k$a<",
            "*>;",
            "Lcom/google/android/gms/common/api/internal/q0;",
            ">;"
        }
    .end annotation
.end field

.field private final l:I

.field private final m:Lcom/google/android/gms/common/api/internal/zace;

.field private n:Z

.field private final o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/common/api/internal/g$c;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lcom/google/android/gms/common/ConnectionResult;

.field final synthetic q:Lcom/google/android/gms/common/api/internal/g;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/g;Lcom/google/android/gms/common/api/e;)V
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/e<",
            "TO;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/g$a;->q:Lcom/google/android/gms/common/api/internal/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/g$a;->e:Ljava/util/Queue;

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/g$a;->j:Ljava/util/Set;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/g$a;->k:Ljava/util/Map;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/g$a;->o:Ljava/util/List;

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/g$a;->p:Lcom/google/android/gms/common/ConnectionResult;

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/g;->a(Lcom/google/android/gms/common/api/internal/g;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {p2, v1, p0}, Lcom/google/android/gms/common/api/e;->a(Landroid/os/Looper;Lcom/google/android/gms/common/api/internal/g$a;)Lcom/google/android/gms/common/api/a$f;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/common/api/internal/g$a;->f:Lcom/google/android/gms/common/api/a$f;

    .line 8
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/g$a;->f:Lcom/google/android/gms/common/api/a$f;

    instance-of v2, v1, Lcom/google/android/gms/common/internal/o;

    if-eqz v2, :cond_0

    .line 9
    check-cast v1, Lcom/google/android/gms/common/internal/o;

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/o;->B()Lcom/google/android/gms/common/api/a$h;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/common/api/internal/g$a;->g:Lcom/google/android/gms/common/api/a$b;

    goto :goto_0

    .line 10
    :cond_0
    iput-object v1, p0, Lcom/google/android/gms/common/api/internal/g$a;->g:Lcom/google/android/gms/common/api/a$b;

    .line 11
    :goto_0
    invoke-virtual {p2}, Lcom/google/android/gms/common/api/e;->a()Lcom/google/android/gms/common/api/internal/b;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/common/api/internal/g$a;->h:Lcom/google/android/gms/common/api/internal/b;

    .line 12
    new-instance v1, Lcom/google/android/gms/common/api/internal/n1;

    invoke-direct {v1}, Lcom/google/android/gms/common/api/internal/n1;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/common/api/internal/g$a;->i:Lcom/google/android/gms/common/api/internal/n1;

    .line 13
    invoke-virtual {p2}, Lcom/google/android/gms/common/api/e;->f()I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/common/api/internal/g$a;->l:I

    .line 14
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/g$a;->f:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v1}, Lcom/google/android/gms/common/api/a$f;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 15
    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/g;->b(Lcom/google/android/gms/common/api/internal/g;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/g;->a(Lcom/google/android/gms/common/api/internal/g;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/common/api/e;->a(Landroid/content/Context;Landroid/os/Handler;)Lcom/google/android/gms/common/api/internal/zace;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/g$a;->m:Lcom/google/android/gms/common/api/internal/zace;

    return-void

    .line 16
    :cond_1
    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/g$a;->m:Lcom/google/android/gms/common/api/internal/zace;

    return-void
.end method

.method private final a([Lcom/google/android/gms/common/Feature;)Lcom/google/android/gms/common/Feature;
    .locals 10
    .param p1    # [Lcom/google/android/gms/common/Feature;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 34
    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_3

    .line 35
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/g$a;->f:Lcom/google/android/gms/common/api/a$f;

    .line 36
    invoke-interface {v1}, Lcom/google/android/gms/common/api/a$f;->i()[Lcom/google/android/gms/common/Feature;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    new-array v1, v2, [Lcom/google/android/gms/common/Feature;

    .line 37
    :cond_1
    new-instance v3, La/e/a;

    array-length v4, v1

    invoke-direct {v3, v4}, La/e/a;-><init>(I)V

    .line 38
    array-length v4, v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v1, v5

    .line 39
    invoke-virtual {v6}, Lcom/google/android/gms/common/Feature;->j()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lcom/google/android/gms/common/Feature;->k()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v3, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 40
    :cond_2
    array-length v1, p1

    :goto_1
    if-ge v2, v1, :cond_5

    aget-object v4, p1, v2

    .line 41
    invoke-virtual {v4}, Lcom/google/android/gms/common/Feature;->j()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 42
    invoke-virtual {v4}, Lcom/google/android/gms/common/Feature;->j()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4}, Lcom/google/android/gms/common/Feature;->k()J

    move-result-wide v7

    cmp-long v9, v5, v7

    if-gez v9, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    return-object v4

    :cond_5
    :goto_3
    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/common/api/internal/g$a;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/g$a;->m()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/common/api/internal/g$a;Lcom/google/android/gms/common/api/internal/g$c;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/g$a;->a(Lcom/google/android/gms/common/api/internal/g$c;)V

    return-void
.end method

.method private final a(Lcom/google/android/gms/common/api/internal/g$c;)V
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/g$a;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 44
    :cond_0
    iget-boolean p1, p0, Lcom/google/android/gms/common/api/internal/g$a;->n:Z

    if-nez p1, :cond_2

    .line 45
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/g$a;->f:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {p1}, Lcom/google/android/gms/common/api/a$f;->f()Z

    move-result p1

    if-nez p1, :cond_1

    .line 46
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/g$a;->a()V

    return-void

    .line 47
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/g$a;->o()V

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/common/api/internal/g$a;Z)Z
    .locals 0

    const/4 p1, 0x0

    .line 48
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/g$a;->a(Z)Z

    move-result p0

    return p0
.end method

.method private final a(Z)Z
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/g$a;->q:Lcom/google/android/gms/common/api/internal/g;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/g;->a(Lcom/google/android/gms/common/api/internal/g;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/m;->a(Landroid/os/Handler;)V

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/g$a;->f:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->f()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/g$a;->k:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/g$a;->i:Lcom/google/android/gms/common/api/internal/n1;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/n1;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 21
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/g$a;->q()V

    :cond_0
    return v1

    .line 22
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/g$a;->f:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {p1}, Lcom/google/android/gms/common/api/a$f;->a()V

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method static synthetic b(Lcom/google/android/gms/common/api/internal/g$a;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/g$a;->n()V

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/common/api/internal/g$a;Lcom/google/android/gms/common/api/internal/g$c;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/g$a;->b(Lcom/google/android/gms/common/api/internal/g$c;)V

    return-void
.end method

.method private final b(Lcom/google/android/gms/common/api/internal/g$c;)V
    .locals 5
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/g$a;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 34
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/g$a;->q:Lcom/google/android/gms/common/api/internal/g;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/g;->a(Lcom/google/android/gms/common/api/internal/g;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 35
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/g$a;->q:Lcom/google/android/gms/common/api/internal/g;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/g;->a(Lcom/google/android/gms/common/api/internal/g;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 36
    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/g$c;->b(Lcom/google/android/gms/common/api/internal/g$c;)Lcom/google/android/gms/common/Feature;

    move-result-object p1

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/g$a;->e:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 38
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/g$a;->e:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/internal/r0;

    .line 39
    instance-of v3, v2, Lcom/google/android/gms/common/api/internal/c0;

    if-eqz v3, :cond_0

    .line 40
    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/common/api/internal/c0;

    invoke-virtual {v3, p0}, Lcom/google/android/gms/common/api/internal/c0;->b(Lcom/google/android/gms/common/api/internal/g$a;)[Lcom/google/android/gms/common/Feature;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 41
    invoke-static {v3, p1}, Lcom/google/android/gms/common/util/b;->a([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 42
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 43
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/google/android/gms/common/api/internal/r0;

    .line 44
    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/g$a;->e:Ljava/util/Queue;

    invoke-interface {v4, v3}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 45
    new-instance v4, Lcom/google/android/gms/common/api/p;

    invoke-direct {v4, p1}, Lcom/google/android/gms/common/api/p;-><init>(Lcom/google/android/gms/common/Feature;)V

    invoke-virtual {v3, v4}, Lcom/google/android/gms/common/api/internal/r0;->a(Ljava/lang/RuntimeException;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private final b(Lcom/google/android/gms/common/ConnectionResult;)Z
    .locals 3
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/common/api/internal/g;->d()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/g$a;->q:Lcom/google/android/gms/common/api/internal/g;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/g;->f(Lcom/google/android/gms/common/api/internal/g;)Lcom/google/android/gms/common/api/internal/x;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/g$a;->q:Lcom/google/android/gms/common/api/internal/g;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/g;->g(Lcom/google/android/gms/common/api/internal/g;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/g$a;->h:Lcom/google/android/gms/common/api/internal/b;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/g$a;->q:Lcom/google/android/gms/common/api/internal/g;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/g;->f(Lcom/google/android/gms/common/api/internal/g;)Lcom/google/android/gms/common/api/internal/x;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/common/api/internal/g$a;->l:I

    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/common/api/internal/h1;->b(Lcom/google/android/gms/common/ConnectionResult;I)V

    const/4 p1, 0x1

    .line 4
    monitor-exit v0

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 5
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private final b(Lcom/google/android/gms/common/api/internal/r0;)Z
    .locals 5
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 7
    instance-of v0, p1, Lcom/google/android/gms/common/api/internal/c0;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 8
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/g$a;->c(Lcom/google/android/gms/common/api/internal/r0;)V

    return v1

    .line 9
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/common/api/internal/c0;

    .line 10
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/internal/c0;->b(Lcom/google/android/gms/common/api/internal/g$a;)[Lcom/google/android/gms/common/Feature;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/gms/common/api/internal/g$a;->a([Lcom/google/android/gms/common/Feature;)Lcom/google/android/gms/common/Feature;

    move-result-object v2

    if-nez v2, :cond_1

    .line 11
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/g$a;->c(Lcom/google/android/gms/common/api/internal/r0;)V

    return v1

    .line 12
    :cond_1
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/internal/c0;->c(Lcom/google/android/gms/common/api/internal/g$a;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 13
    new-instance p1, Lcom/google/android/gms/common/api/internal/g$c;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/g$a;->h:Lcom/google/android/gms/common/api/internal/b;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v2, v1}, Lcom/google/android/gms/common/api/internal/g$c;-><init>(Lcom/google/android/gms/common/api/internal/b;Lcom/google/android/gms/common/Feature;Lcom/google/android/gms/common/api/internal/g0;)V

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/g$a;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/16 v2, 0xf

    if-ltz v0, :cond_2

    .line 15
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/g$a;->o:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/internal/g$c;

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/g$a;->q:Lcom/google/android/gms/common/api/internal/g;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/g;->a(Lcom/google/android/gms/common/api/internal/g;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/g$a;->q:Lcom/google/android/gms/common/api/internal/g;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/g;->a(Lcom/google/android/gms/common/api/internal/g;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/g$a;->q:Lcom/google/android/gms/common/api/internal/g;

    .line 18
    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/g;->a(Lcom/google/android/gms/common/api/internal/g;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/g$a;->q:Lcom/google/android/gms/common/api/internal/g;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/g;->c(Lcom/google/android/gms/common/api/internal/g;)J

    move-result-wide v1

    .line 19
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 20
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/g$a;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/g$a;->q:Lcom/google/android/gms/common/api/internal/g;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/g;->a(Lcom/google/android/gms/common/api/internal/g;)Landroid/os/Handler;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/g$a;->q:Lcom/google/android/gms/common/api/internal/g;

    .line 22
    invoke-static {v3}, Lcom/google/android/gms/common/api/internal/g;->a(Lcom/google/android/gms/common/api/internal/g;)Landroid/os/Handler;

    move-result-object v3

    invoke-static {v3, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/g$a;->q:Lcom/google/android/gms/common/api/internal/g;

    invoke-static {v3}, Lcom/google/android/gms/common/api/internal/g;->c(Lcom/google/android/gms/common/api/internal/g;)J

    move-result-wide v3

    .line 23
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/g$a;->q:Lcom/google/android/gms/common/api/internal/g;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/g;->a(Lcom/google/android/gms/common/api/internal/g;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/g$a;->q:Lcom/google/android/gms/common/api/internal/g;

    .line 25
    invoke-static {v2}, Lcom/google/android/gms/common/api/internal/g;->a(Lcom/google/android/gms/common/api/internal/g;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/g$a;->q:Lcom/google/android/gms/common/api/internal/g;

    .line 26
    invoke-static {v2}, Lcom/google/android/gms/common/api/internal/g;->d(Lcom/google/android/gms/common/api/internal/g;)J

    move-result-wide v2

    .line 27
    invoke-virtual {v0, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 28
    new-instance p1, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v0, 0x2

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    .line 29
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/g$a;->b(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 30
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/g$a;->q:Lcom/google/android/gms/common/api/internal/g;

    iget v1, p0, Lcom/google/android/gms/common/api/internal/g$a;->l:I

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/common/api/internal/g;->b(Lcom/google/android/gms/common/ConnectionResult;I)Z

    goto :goto_0

    .line 31
    :cond_3
    new-instance p1, Lcom/google/android/gms/common/api/p;

    invoke-direct {p1, v2}, Lcom/google/android/gms/common/api/p;-><init>(Lcom/google/android/gms/common/Feature;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/r0;->a(Ljava/lang/RuntimeException;)V

    :cond_4
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic c(Lcom/google/android/gms/common/api/internal/g$a;)Lcom/google/android/gms/common/api/a$f;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/g$a;->f:Lcom/google/android/gms/common/api/a$f;

    return-object p0
.end method

.method private final c(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/g$a;->j:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/internal/g1;

    const/4 v2, 0x0

    .line 6
    sget-object v3, Lcom/google/android/gms/common/ConnectionResult;->i:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {p1, v3}, Lcom/google/android/gms/common/internal/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7
    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/g$a;->f:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v2}, Lcom/google/android/gms/common/api/a$f;->e()Ljava/lang/String;

    move-result-object v2

    .line 8
    :cond_0
    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/g$a;->h:Lcom/google/android/gms/common/api/internal/b;

    invoke-virtual {v1, v3, p1, v2}, Lcom/google/android/gms/common/api/internal/g1;->a(Lcom/google/android/gms/common/api/internal/b;Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/g$a;->j:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    return-void
.end method

.method private final c(Lcom/google/android/gms/common/api/internal/r0;)V
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/g$a;->i:Lcom/google/android/gms/common/api/internal/n1;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/g$a;->d()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/common/api/internal/r0;->a(Lcom/google/android/gms/common/api/internal/n1;Z)V

    .line 2
    :try_start_0
    invoke-virtual {p1, p0}, Lcom/google/android/gms/common/api/internal/r0;->a(Lcom/google/android/gms/common/api/internal/g$a;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/g$a;->onConnectionSuspended(I)V

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/g$a;->f:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {p1}, Lcom/google/android/gms/common/api/a$f;->a()V

    return-void
.end method

.method private final m()V
    .locals 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/g$a;->j()V

    .line 2
    sget-object v0, Lcom/google/android/gms/common/ConnectionResult;->i:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/internal/g$a;->c(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/g$a;->p()V

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/g$a;->k:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 5
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/internal/q0;

    .line 7
    iget-object v2, v1, Lcom/google/android/gms/common/api/internal/q0;->a:Lcom/google/android/gms/common/api/internal/n;

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/n;->c()[Lcom/google/android/gms/common/Feature;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/gms/common/api/internal/g$a;->a([Lcom/google/android/gms/common/Feature;)Lcom/google/android/gms/common/Feature;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 9
    :cond_0
    :try_start_0
    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/q0;->a:Lcom/google/android/gms/common/api/internal/n;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/g$a;->g:Lcom/google/android/gms/common/api/a$b;

    new-instance v3, Le/i/b/b/d/i;

    invoke-direct {v3}, Le/i/b/b/d/i;-><init>()V

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/common/api/internal/n;->a(Lcom/google/android/gms/common/api/a$b;Le/i/b/b/d/i;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 10
    :catch_0
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catch_1
    const/4 v0, 0x1

    .line 11
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/internal/g$a;->onConnectionSuspended(I)V

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/g$a;->f:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->a()V

    .line 13
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/g$a;->o()V

    .line 14
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/g$a;->q()V

    return-void
.end method

.method private final n()V
    .locals 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/g$a;->j()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/g$a;->n:Z

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/g$a;->i:Lcom/google/android/gms/common/api/internal/n1;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/n1;->c()V

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/g$a;->q:Lcom/google/android/gms/common/api/internal/g;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/g;->a(Lcom/google/android/gms/common/api/internal/g;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/g$a;->q:Lcom/google/android/gms/common/api/internal/g;

    .line 5
    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/g;->a(Lcom/google/android/gms/common/api/internal/g;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/g$a;->h:Lcom/google/android/gms/common/api/internal/b;

    const/16 v3, 0x9

    invoke-static {v1, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/g$a;->q:Lcom/google/android/gms/common/api/internal/g;

    invoke-static {v2}, Lcom/google/android/gms/common/api/internal/g;->c(Lcom/google/android/gms/common/api/internal/g;)J

    move-result-wide v2

    .line 6
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/g$a;->q:Lcom/google/android/gms/common/api/internal/g;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/g;->a(Lcom/google/android/gms/common/api/internal/g;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/g$a;->q:Lcom/google/android/gms/common/api/internal/g;

    .line 8
    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/g;->a(Lcom/google/android/gms/common/api/internal/g;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/g$a;->h:Lcom/google/android/gms/common/api/internal/b;

    const/16 v3, 0xb

    invoke-static {v1, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/g$a;->q:Lcom/google/android/gms/common/api/internal/g;

    invoke-static {v2}, Lcom/google/android/gms/common/api/internal/g;->d(Lcom/google/android/gms/common/api/internal/g;)J

    move-result-wide v2

    .line 9
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/g$a;->q:Lcom/google/android/gms/common/api/internal/g;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/g;->e(Lcom/google/android/gms/common/api/internal/g;)Lcom/google/android/gms/common/internal/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/j;->a()V

    return-void
.end method

.method private final o()V
    .locals 5
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/g$a;->e:Ljava/util/Queue;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/google/android/gms/common/api/internal/r0;

    .line 2
    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/g$a;->f:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v4}, Lcom/google/android/gms/common/api/a$f;->f()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3
    invoke-direct {p0, v3}, Lcom/google/android/gms/common/api/internal/g$a;->b(Lcom/google/android/gms/common/api/internal/r0;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4
    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/g$a;->e:Ljava/util/Queue;

    invoke-interface {v4, v3}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final p()V
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/g$a;->n:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/g$a;->q:Lcom/google/android/gms/common/api/internal/g;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/g;->a(Lcom/google/android/gms/common/api/internal/g;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/g$a;->h:Lcom/google/android/gms/common/api/internal/b;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/g$a;->q:Lcom/google/android/gms/common/api/internal/g;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/g;->a(Lcom/google/android/gms/common/api/internal/g;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/g$a;->h:Lcom/google/android/gms/common/api/internal/b;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/g$a;->n:Z

    :cond_0
    return-void
.end method

.method private final q()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/g$a;->q:Lcom/google/android/gms/common/api/internal/g;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/g;->a(Lcom/google/android/gms/common/api/internal/g;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/g$a;->h:Lcom/google/android/gms/common/api/internal/b;

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/g$a;->q:Lcom/google/android/gms/common/api/internal/g;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/g;->a(Lcom/google/android/gms/common/api/internal/g;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/g$a;->q:Lcom/google/android/gms/common/api/internal/g;

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/g;->a(Lcom/google/android/gms/common/api/internal/g;)Landroid/os/Handler;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/g$a;->h:Lcom/google/android/gms/common/api/internal/b;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/g$a;->q:Lcom/google/android/gms/common/api/internal/g;

    invoke-static {v2}, Lcom/google/android/gms/common/api/internal/g;->i(Lcom/google/android/gms/common/api/internal/g;)J

    move-result-wide v2

    .line 4
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/g$a;->q:Lcom/google/android/gms/common/api/internal/g;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/g;->a(Lcom/google/android/gms/common/api/internal/g;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/m;->a(Landroid/os/Handler;)V

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/g$a;->f:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->f()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/g$a;->f:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/g$a;->q:Lcom/google/android/gms/common/api/internal/g;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/g;->e(Lcom/google/android/gms/common/api/internal/g;)Lcom/google/android/gms/common/internal/j;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/g$a;->q:Lcom/google/android/gms/common/api/internal/g;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/g;->b(Lcom/google/android/gms/common/api/internal/g;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/g$a;->f:Lcom/google/android/gms/common/api/a$f;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/j;->a(Landroid/content/Context;Lcom/google/android/gms/common/api/a$f;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 26
    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    .line 27
    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/api/internal/g$a;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void

    .line 28
    :cond_1
    new-instance v0, Lcom/google/android/gms/common/api/internal/g$b;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/g$a;->q:Lcom/google/android/gms/common/api/internal/g;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/g$a;->f:Lcom/google/android/gms/common/api/a$f;

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/g$a;->h:Lcom/google/android/gms/common/api/internal/b;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/internal/g$b;-><init>(Lcom/google/android/gms/common/api/internal/g;Lcom/google/android/gms/common/api/a$f;Lcom/google/android/gms/common/api/internal/b;)V

    .line 29
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/g$a;->f:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v1}, Lcom/google/android/gms/common/api/a$f;->j()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 30
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/g$a;->m:Lcom/google/android/gms/common/api/internal/zace;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/api/internal/zace;->zaa(Lcom/google/android/gms/common/api/internal/t0;)V

    .line 31
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/g$a;->f:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v1, v0}, Lcom/google/android/gms/common/api/a$f;->a(Lcom/google/android/gms/common/internal/BaseGmsClient$c;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/g$a;->q:Lcom/google/android/gms/common/api/internal/g;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/g;->a(Lcom/google/android/gms/common/api/internal/g;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/m;->a(Landroid/os/Handler;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/g$a;->f:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->a()V

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/g$a;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/common/api/Status;)V
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/g$a;->q:Lcom/google/android/gms/common/api/internal/g;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/g;->a(Lcom/google/android/gms/common/api/internal/g;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/m;->a(Landroid/os/Handler;)V

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/g$a;->e:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/internal/r0;

    .line 16
    invoke-virtual {v1, p1}, Lcom/google/android/gms/common/api/internal/r0;->a(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0

    .line 17
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/g$a;->e:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->clear()V

    return-void
.end method

.method public final a(Lcom/google/android/gms/common/api/internal/g1;)V
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/g$a;->q:Lcom/google/android/gms/common/api/internal/g;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/g;->a(Lcom/google/android/gms/common/api/internal/g;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/m;->a(Landroid/os/Handler;)V

    .line 33
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/g$a;->j:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/google/android/gms/common/api/internal/r0;)V
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/g$a;->q:Lcom/google/android/gms/common/api/internal/g;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/g;->a(Lcom/google/android/gms/common/api/internal/g;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/m;->a(Landroid/os/Handler;)V

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/g$a;->f:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/g$a;->b(Lcom/google/android/gms/common/api/internal/r0;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/g$a;->q()V

    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/g$a;->e:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/g$a;->e:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/g$a;->p:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz p1, :cond_2

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->m()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 12
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/g$a;->p:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/g$a;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void

    .line 13
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/g$a;->a()V

    return-void
.end method

.method public final b()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/google/android/gms/common/api/internal/g$a;->l:I

    return v0
.end method

.method final c()Z
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/g$a;->f:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->f()Z

    move-result v0

    return v0
.end method

.method public final d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/g$a;->f:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->j()Z

    move-result v0

    return v0
.end method

.method public final e()V
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/g$a;->q:Lcom/google/android/gms/common/api/internal/g;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/g;->a(Lcom/google/android/gms/common/api/internal/g;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/m;->a(Landroid/os/Handler;)V

    .line 2
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/g$a;->n:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/g$a;->a()V

    :cond_0
    return-void
.end method

.method public final f()Lcom/google/android/gms/common/api/a$f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/g$a;->f:Lcom/google/android/gms/common/api/a$f;

    return-object v0
.end method

.method public final g()V
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/g$a;->q:Lcom/google/android/gms/common/api/internal/g;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/g;->a(Lcom/google/android/gms/common/api/internal/g;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/m;->a(Landroid/os/Handler;)V

    .line 2
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/g$a;->n:Z

    if-eqz v0, :cond_1

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/g$a;->p()V

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/g$a;->q:Lcom/google/android/gms/common/api/internal/g;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/g;->h(Lcom/google/android/gms/common/api/internal/g;)Lcom/google/android/gms/common/c;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/g$a;->q:Lcom/google/android/gms/common/api/internal/g;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/g;->b(Lcom/google/android/gms/common/api/internal/g;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/c;->b(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x12

    const/16 v2, 0x8

    if-ne v0, v1, :cond_0

    .line 5
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string v1, "Connection timed out while waiting for Google Play services update to complete."

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string v1, "API failed to connect while resuming due to an unknown error."

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 7
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/internal/g$a;->a(Lcom/google/android/gms/common/api/Status;)V

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/g$a;->f:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->a()V

    :cond_1
    return-void
.end method

.method public final h()V
    .locals 6
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/g$a;->q:Lcom/google/android/gms/common/api/internal/g;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/g;->a(Lcom/google/android/gms/common/api/internal/g;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/m;->a(Landroid/os/Handler;)V

    .line 2
    sget-object v0, Lcom/google/android/gms/common/api/internal/g;->r:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/internal/g$a;->a(Lcom/google/android/gms/common/api/Status;)V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/g$a;->i:Lcom/google/android/gms/common/api/internal/n1;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/n1;->b()V

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/g$a;->k:Ljava/util/Map;

    .line 5
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/g$a;->k:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/android/gms/common/api/internal/k$a;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/common/api/internal/k$a;

    .line 6
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 7
    new-instance v4, Lcom/google/android/gms/common/api/internal/f1;

    new-instance v5, Le/i/b/b/d/i;

    invoke-direct {v5}, Le/i/b/b/d/i;-><init>()V

    invoke-direct {v4, v3, v5}, Lcom/google/android/gms/common/api/internal/f1;-><init>(Lcom/google/android/gms/common/api/internal/k$a;Le/i/b/b/d/i;)V

    invoke-virtual {p0, v4}, Lcom/google/android/gms/common/api/internal/g$a;->a(Lcom/google/android/gms/common/api/internal/r0;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/internal/g$a;->c(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/g$a;->f:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/g$a;->f:Lcom/google/android/gms/common/api/a$f;

    new-instance v1, Lcom/google/android/gms/common/api/internal/k0;

    invoke-direct {v1, p0}, Lcom/google/android/gms/common/api/internal/k0;-><init>(Lcom/google/android/gms/common/api/internal/g$a;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/a$f;->a(Lcom/google/android/gms/common/internal/BaseGmsClient$e;)V

    :cond_1
    return-void
.end method

.method public final i()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/internal/k$a<",
            "*>;",
            "Lcom/google/android/gms/common/api/internal/q0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/g$a;->k:Ljava/util/Map;

    return-object v0
.end method

.method public final j()V
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/g$a;->q:Lcom/google/android/gms/common/api/internal/g;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/g;->a(Lcom/google/android/gms/common/api/internal/g;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/m;->a(Landroid/os/Handler;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/g$a;->p:Lcom/google/android/gms/common/ConnectionResult;

    return-void
.end method

.method public final k()Lcom/google/android/gms/common/ConnectionResult;
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/g$a;->q:Lcom/google/android/gms/common/api/internal/g;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/g;->a(Lcom/google/android/gms/common/api/internal/g;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/m;->a(Landroid/os/Handler;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/g$a;->p:Lcom/google/android/gms/common/ConnectionResult;

    return-object v0
.end method

.method public final l()Z
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/internal/g$a;->a(Z)Z

    move-result v0

    return v0
.end method

.method public final onConnected(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/g$a;->q:Lcom/google/android/gms/common/api/internal/g;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/g;->a(Lcom/google/android/gms/common/api/internal/g;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/g$a;->m()V

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/g$a;->q:Lcom/google/android/gms/common/api/internal/g;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/g;->a(Lcom/google/android/gms/common/api/internal/g;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/common/api/internal/h0;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/internal/h0;-><init>(Lcom/google/android/gms/common/api/internal/g$a;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 5
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/g$a;->q:Lcom/google/android/gms/common/api/internal/g;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/g;->a(Lcom/google/android/gms/common/api/internal/g;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/m;->a(Landroid/os/Handler;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/g$a;->m:Lcom/google/android/gms/common/api/internal/zace;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zace;->zabq()V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/g$a;->j()V

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/g$a;->q:Lcom/google/android/gms/common/api/internal/g;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/g;->e(Lcom/google/android/gms/common/api/internal/g;)Lcom/google/android/gms/common/internal/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/j;->a()V

    .line 6
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/g$a;->c(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->j()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 8
    invoke-static {}, Lcom/google/android/gms/common/api/internal/g;->e()Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/g$a;->a(Lcom/google/android/gms/common/api/Status;)V

    return-void

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/g$a;->e:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/g$a;->p:Lcom/google/android/gms/common/ConnectionResult;

    return-void

    .line 11
    :cond_2
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/g$a;->b(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 12
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/g$a;->q:Lcom/google/android/gms/common/api/internal/g;

    iget v1, p0, Lcom/google/android/gms/common/api/internal/g$a;->l:I

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/common/api/internal/g;->b(Lcom/google/android/gms/common/ConnectionResult;I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->j()I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_4

    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/g$a;->n:Z

    .line 15
    :cond_4
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/g$a;->n:Z

    if-eqz v0, :cond_5

    .line 16
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/g$a;->q:Lcom/google/android/gms/common/api/internal/g;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/g;->a(Lcom/google/android/gms/common/api/internal/g;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/g$a;->q:Lcom/google/android/gms/common/api/internal/g;

    .line 17
    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/g;->a(Lcom/google/android/gms/common/api/internal/g;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/g$a;->h:Lcom/google/android/gms/common/api/internal/b;

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/g$a;->q:Lcom/google/android/gms/common/api/internal/g;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/g;->c(Lcom/google/android/gms/common/api/internal/g;)J

    move-result-wide v1

    .line 18
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 19
    :cond_5
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x11

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/g$a;->h:Lcom/google/android/gms/common/api/internal/b;

    .line 20
    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x3f

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "API: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not available on this device. Connection failed with: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 21
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/internal/g$a;->a(Lcom/google/android/gms/common/api/Status;)V

    :cond_6
    return-void
.end method

.method public final onConnectionSuspended(I)V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/g$a;->q:Lcom/google/android/gms/common/api/internal/g;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/g;->a(Lcom/google/android/gms/common/api/internal/g;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/g$a;->n()V

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/g$a;->q:Lcom/google/android/gms/common/api/internal/g;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/g;->a(Lcom/google/android/gms/common/api/internal/g;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/common/api/internal/i0;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/internal/i0;-><init>(Lcom/google/android/gms/common/api/internal/g$a;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
