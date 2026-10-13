.class public final Lcom/google/android/gms/internal/ads/ru0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final c:Lcom/google/android/gms/internal/ads/qz0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/qz0<",
            "*>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/qz0<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final e:Lcom/google/android/gms/internal/ads/qz0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/qz0<",
            "TO;>;"
        }
    .end annotation
.end field

.field final synthetic f:Lcom/google/android/gms/internal/ads/ku0;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/ku0;Ljava/lang/Object;Ljava/lang/String;Lcom/google/android/gms/internal/ads/qz0;Ljava/util/List;Lcom/google/android/gms/internal/ads/qz0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/qz0<",
            "*>;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/qz0<",
            "*>;>;",
            "Lcom/google/android/gms/internal/ads/qz0<",
            "TO;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ru0;->f:Lcom/google/android/gms/internal/ads/ku0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ru0;->a:Ljava/lang/Object;

    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ru0;->b:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/ru0;->c:Lcom/google/android/gms/internal/ads/qz0;

    .line 5
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/ru0;->d:Ljava/util/List;

    .line 6
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/ru0;->e:Lcom/google/android/gms/internal/ads/qz0;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/ku0;Ljava/lang/Object;Ljava/lang/String;Lcom/google/android/gms/internal/ads/qz0;Ljava/util/List;Lcom/google/android/gms/internal/ads/qz0;Lcom/google/android/gms/internal/ads/ju0;)V
    .locals 7

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 7
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/ru0;-><init>(Lcom/google/android/gms/internal/ads/ku0;Ljava/lang/Object;Ljava/lang/String;Lcom/google/android/gms/internal/ads/qz0;Ljava/util/List;Lcom/google/android/gms/internal/ads/qz0;)V

    return-void
.end method

.method private final a(Lcom/google/android/gms/internal/ads/qy0;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/ru0;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O2:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/qy0<",
            "TO;TO2;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/gms/internal/ads/ru0<",
            "TO2;>;"
        }
    .end annotation

    .line 4
    new-instance v7, Lcom/google/android/gms/internal/ads/ru0;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ru0;->f:Lcom/google/android/gms/internal/ads/ku0;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ru0;->a:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ru0;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/ru0;->c:Lcom/google/android/gms/internal/ads/qz0;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/ru0;->d:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ru0;->e:Lcom/google/android/gms/internal/ads/qz0;

    .line 5
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/gz0;->a(Lcom/google/android/gms/internal/ads/qz0;Lcom/google/android/gms/internal/ads/qy0;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/ru0;-><init>(Lcom/google/android/gms/internal/ads/ku0;Ljava/lang/Object;Ljava/lang/String;Lcom/google/android/gms/internal/ads/qz0;Ljava/util/List;Lcom/google/android/gms/internal/ads/qz0;)V

    return-object v7
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/hu0;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/hu0<",
            "TE;TO;>;"
        }
    .end annotation

    .line 14
    new-instance v0, Lcom/google/android/gms/internal/ads/hu0;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ru0;->a:Ljava/lang/Object;

    .line 15
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ru0;->b:Ljava/lang/String;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ru0;->f:Lcom/google/android/gms/internal/ads/ku0;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/ku0;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ru0;->e:Lcom/google/android/gms/internal/ads/qz0;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/hu0;-><init>(Ljava/lang/Object;Ljava/lang/String;Lcom/google/android/gms/internal/ads/qz0;)V

    .line 16
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ru0;->f:Lcom/google/android/gms/internal/ads/ku0;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/ku0;->c(Lcom/google/android/gms/internal/ads/ku0;)Lcom/google/android/gms/internal/ads/xu0;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/xu0;->c(Lcom/google/android/gms/internal/ads/hu0;)V

    .line 17
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ru0;->c:Lcom/google/android/gms/internal/ads/qz0;

    new-instance v2, Lcom/google/android/gms/internal/ads/vu0;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/vu0;-><init>(Lcom/google/android/gms/internal/ads/ru0;Lcom/google/android/gms/internal/ads/hu0;)V

    .line 18
    sget-object v3, Lcom/google/android/gms/internal/ads/yd;->e:Lcom/google/android/gms/internal/ads/tz0;

    .line 19
    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/ads/qz0;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 20
    new-instance v1, Lcom/google/android/gms/internal/ads/uu0;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/uu0;-><init>(Lcom/google/android/gms/internal/ads/ru0;Lcom/google/android/gms/internal/ads/hu0;)V

    .line 21
    sget-object v2, Lcom/google/android/gms/internal/ads/yd;->e:Lcom/google/android/gms/internal/ads/tz0;

    .line 22
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/gz0;->a(Lcom/google/android/gms/internal/ads/qz0;Lcom/google/android/gms/internal/ads/hz0;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public final a(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/internal/ads/ru0;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lcom/google/android/gms/internal/ads/ru0<",
            "TO;>;"
        }
    .end annotation

    .line 12
    new-instance v7, Lcom/google/android/gms/internal/ads/ru0;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ru0;->f:Lcom/google/android/gms/internal/ads/ku0;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ru0;->a:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ru0;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/ru0;->c:Lcom/google/android/gms/internal/ads/qz0;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/ru0;->d:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ru0;->e:Lcom/google/android/gms/internal/ads/qz0;

    .line 13
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/ku0;->b(Lcom/google/android/gms/internal/ads/ku0;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v6

    invoke-static {v0, p1, p2, p3, v6}, Lcom/google/android/gms/internal/ads/gz0;->a(Lcom/google/android/gms/internal/ads/qz0;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/ru0;-><init>(Lcom/google/android/gms/internal/ads/ku0;Ljava/lang/Object;Ljava/lang/String;Lcom/google/android/gms/internal/ads/qz0;Ljava/util/List;Lcom/google/android/gms/internal/ads/qz0;)V

    return-object v7
.end method

.method public final a(Lcom/google/android/gms/internal/ads/fu0;)Lcom/google/android/gms/internal/ads/ru0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O2:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/fu0<",
            "TO;TO2;>;)",
            "Lcom/google/android/gms/internal/ads/ru0<",
            "TO2;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/qu0;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/qu0;-><init>(Lcom/google/android/gms/internal/ads/fu0;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/ru0;->a(Lcom/google/android/gms/internal/ads/qy0;)Lcom/google/android/gms/internal/ads/ru0;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/google/android/gms/internal/ads/qy0;)Lcom/google/android/gms/internal/ads/ru0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O2:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/qy0<",
            "TO;TO2;>;)",
            "Lcom/google/android/gms/internal/ads/ru0<",
            "TO2;>;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ru0;->f:Lcom/google/android/gms/internal/ads/ku0;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ku0;->a(Lcom/google/android/gms/internal/ads/ku0;)Lcom/google/android/gms/internal/ads/tz0;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/ru0;->a(Lcom/google/android/gms/internal/ads/qy0;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/ru0;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/google/android/gms/internal/ads/qz0;)Lcom/google/android/gms/internal/ads/ru0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O2:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/qz0<",
            "TO2;>;)",
            "Lcom/google/android/gms/internal/ads/ru0<",
            "TO2;>;"
        }
    .end annotation

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/tu0;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/tu0;-><init>(Lcom/google/android/gms/internal/ads/qz0;)V

    .line 7
    sget-object p1, Lcom/google/android/gms/internal/ads/yd;->e:Lcom/google/android/gms/internal/ads/tz0;

    .line 8
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/ads/ru0;->a(Lcom/google/android/gms/internal/ads/qy0;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/ru0;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/fu0;)Lcom/google/android/gms/internal/ads/ru0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/android/gms/internal/ads/fu0<",
            "TT;TO;>;)",
            "Lcom/google/android/gms/internal/ads/ru0<",
            "TO;>;"
        }
    .end annotation

    .line 9
    new-instance v0, Lcom/google/android/gms/internal/ads/su0;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/su0;-><init>(Lcom/google/android/gms/internal/ads/fu0;)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/ru0;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/qy0;)Lcom/google/android/gms/internal/ads/ru0;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/qy0;)Lcom/google/android/gms/internal/ads/ru0;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/android/gms/internal/ads/qy0<",
            "TT;TO;>;)",
            "Lcom/google/android/gms/internal/ads/ru0<",
            "TO;>;"
        }
    .end annotation

    .line 10
    new-instance v7, Lcom/google/android/gms/internal/ads/ru0;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ru0;->f:Lcom/google/android/gms/internal/ads/ku0;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ru0;->a:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ru0;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/ru0;->c:Lcom/google/android/gms/internal/ads/qz0;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/ru0;->d:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ru0;->e:Lcom/google/android/gms/internal/ads/qz0;

    .line 11
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/ku0;->a(Lcom/google/android/gms/internal/ads/ku0;)Lcom/google/android/gms/internal/ads/tz0;

    move-result-object v6

    invoke-static {v0, p1, p2, v6}, Lcom/google/android/gms/internal/ads/gz0;->a(Lcom/google/android/gms/internal/ads/qz0;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/qy0;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/ru0;-><init>(Lcom/google/android/gms/internal/ads/ku0;Ljava/lang/Object;Ljava/lang/String;Lcom/google/android/gms/internal/ads/qz0;Ljava/util/List;Lcom/google/android/gms/internal/ads/qz0;)V

    return-object v7
.end method

.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/ru0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/android/gms/internal/ads/ru0<",
            "TO;>;"
        }
    .end annotation

    .line 23
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ru0;->a()Lcom/google/android/gms/internal/ads/hu0;

    move-result-object v0

    .line 24
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ru0;->f:Lcom/google/android/gms/internal/ads/ku0;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/ads/ku0;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/qz0;)Lcom/google/android/gms/internal/ads/ru0;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ru0;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/ads/ru0<",
            "TO;>;"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/google/android/gms/internal/ads/ru0;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ru0;->f:Lcom/google/android/gms/internal/ads/ku0;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ru0;->a:Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/ru0;->c:Lcom/google/android/gms/internal/ads/qz0;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/ru0;->d:Ljava/util/List;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/ru0;->e:Lcom/google/android/gms/internal/ads/qz0;

    move-object v0, v7

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/ru0;-><init>(Lcom/google/android/gms/internal/ads/ku0;Ljava/lang/Object;Ljava/lang/String;Lcom/google/android/gms/internal/ads/qz0;Ljava/util/List;Lcom/google/android/gms/internal/ads/qz0;)V

    return-object v7
.end method
