.class Lcom/mapbox/mapboxsdk/style/sources/CustomGeometrySource$b;
.super Ljava/lang/Object;
.source "CustomGeometrySource.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapbox/mapboxsdk/style/sources/CustomGeometrySource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private final e:Lcom/mapbox/mapboxsdk/style/sources/CustomGeometrySource$c;

.field private final f:Lcom/mapbox/mapboxsdk/style/sources/b;

.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/mapbox/mapboxsdk/style/sources/CustomGeometrySource$c;",
            "Lcom/mapbox/mapboxsdk/style/sources/CustomGeometrySource$b;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/mapbox/mapboxsdk/style/sources/CustomGeometrySource$c;",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/lang/ref/WeakReference;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/mapbox/mapboxsdk/style/sources/CustomGeometrySource;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lcom/mapbox/mapboxsdk/style/sources/CustomGeometrySource$c;Lcom/mapbox/mapboxsdk/style/sources/b;Ljava/util/Map;Ljava/util/Map;Lcom/mapbox/mapboxsdk/style/sources/CustomGeometrySource;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/sources/CustomGeometrySource$c;",
            "Lcom/mapbox/mapboxsdk/style/sources/b;",
            "Ljava/util/Map<",
            "Lcom/mapbox/mapboxsdk/style/sources/CustomGeometrySource$c;",
            "Lcom/mapbox/mapboxsdk/style/sources/CustomGeometrySource$b;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/mapbox/mapboxsdk/style/sources/CustomGeometrySource$c;",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            ">;",
            "Lcom/mapbox/mapboxsdk/style/sources/CustomGeometrySource;",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/style/sources/CustomGeometrySource$b;->e:Lcom/mapbox/mapboxsdk/style/sources/CustomGeometrySource$c;

    .line 3
    iput-object p2, p0, Lcom/mapbox/mapboxsdk/style/sources/CustomGeometrySource$b;->f:Lcom/mapbox/mapboxsdk/style/sources/b;

    .line 4
    iput-object p3, p0, Lcom/mapbox/mapboxsdk/style/sources/CustomGeometrySource$b;->g:Ljava/util/Map;

    .line 5
    iput-object p4, p0, Lcom/mapbox/mapboxsdk/style/sources/CustomGeometrySource$b;->h:Ljava/util/Map;

    .line 6
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/mapbox/mapboxsdk/style/sources/CustomGeometrySource$b;->i:Ljava/lang/ref/WeakReference;

    .line 7
    iput-object p6, p0, Lcom/mapbox/mapboxsdk/style/sources/CustomGeometrySource$b;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private a()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/style/sources/CustomGeometrySource$b;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 1
    const-class v0, Lcom/mapbox/mapboxsdk/style/sources/CustomGeometrySource$b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    check-cast p1, Lcom/mapbox/mapboxsdk/style/sources/CustomGeometrySource$b;

    .line 3
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/style/sources/CustomGeometrySource$b;->e:Lcom/mapbox/mapboxsdk/style/sources/CustomGeometrySource$c;

    iget-object p1, p1, Lcom/mapbox/mapboxsdk/style/sources/CustomGeometrySource$b;->e:Lcom/mapbox/mapboxsdk/style/sources/CustomGeometrySource$c;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/style/sources/CustomGeometrySource$c;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/style/sources/CustomGeometrySource$b;->g:Ljava/util/Map;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/style/sources/CustomGeometrySource$b;->h:Ljava/util/Map;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 3
    :try_start_1
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/style/sources/CustomGeometrySource$b;->h:Ljava/util/Map;

    iget-object v3, p0, Lcom/mapbox/mapboxsdk/style/sources/CustomGeometrySource$b;->e:Lcom/mapbox/mapboxsdk/style/sources/CustomGeometrySource$c;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/style/sources/CustomGeometrySource$b;->g:Ljava/util/Map;

    iget-object v3, p0, Lcom/mapbox/mapboxsdk/style/sources/CustomGeometrySource$b;->e:Lcom/mapbox/mapboxsdk/style/sources/CustomGeometrySource$c;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/style/sources/CustomGeometrySource$b;->g:Ljava/util/Map;

    iget-object v3, p0, Lcom/mapbox/mapboxsdk/style/sources/CustomGeometrySource$b;->e:Lcom/mapbox/mapboxsdk/style/sources/CustomGeometrySource$c;

    invoke-interface {v2, v3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    return-void

    .line 7
    :cond_1
    :try_start_3
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/style/sources/CustomGeometrySource$b;->h:Ljava/util/Map;

    iget-object v3, p0, Lcom/mapbox/mapboxsdk/style/sources/CustomGeometrySource$b;->e:Lcom/mapbox/mapboxsdk/style/sources/CustomGeometrySource$c;

    iget-object v4, p0, Lcom/mapbox/mapboxsdk/style/sources/CustomGeometrySource$b;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 9
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 10
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/sources/CustomGeometrySource$b;->a()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 11
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/style/sources/CustomGeometrySource$b;->f:Lcom/mapbox/mapboxsdk/style/sources/b;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/style/sources/CustomGeometrySource$b;->e:Lcom/mapbox/mapboxsdk/style/sources/CustomGeometrySource$c;

    iget v2, v1, Lcom/mapbox/mapboxsdk/style/sources/CustomGeometrySource$c;->a:I

    iget v3, v1, Lcom/mapbox/mapboxsdk/style/sources/CustomGeometrySource$c;->b:I

    iget v1, v1, Lcom/mapbox/mapboxsdk/style/sources/CustomGeometrySource$c;->c:I

    invoke-static {v2, v3, v1}, Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;->a(III)Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;

    move-result-object v1

    iget-object v2, p0, Lcom/mapbox/mapboxsdk/style/sources/CustomGeometrySource$b;->e:Lcom/mapbox/mapboxsdk/style/sources/CustomGeometrySource$c;

    iget v2, v2, Lcom/mapbox/mapboxsdk/style/sources/CustomGeometrySource$c;->a:I

    invoke-interface {v0, v1, v2}, Lcom/mapbox/mapboxsdk/style/sources/b;->a(Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;I)Lcom/mapbox/geojson/FeatureCollection;

    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/style/sources/CustomGeometrySource$b;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mapbox/mapboxsdk/style/sources/CustomGeometrySource;

    .line 13
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/sources/CustomGeometrySource$b;->a()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 14
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/style/sources/CustomGeometrySource$b;->e:Lcom/mapbox/mapboxsdk/style/sources/CustomGeometrySource$c;

    invoke-static {v1, v2, v0}, Lcom/mapbox/mapboxsdk/style/sources/CustomGeometrySource;->a(Lcom/mapbox/mapboxsdk/style/sources/CustomGeometrySource;Lcom/mapbox/mapboxsdk/style/sources/CustomGeometrySource$c;Lcom/mapbox/geojson/FeatureCollection;)V

    .line 15
    :cond_2
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/style/sources/CustomGeometrySource$b;->g:Ljava/util/Map;

    monitor-enter v1

    .line 16
    :try_start_5
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/style/sources/CustomGeometrySource$b;->h:Ljava/util/Map;

    monitor-enter v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 17
    :try_start_6
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/style/sources/CustomGeometrySource$b;->h:Ljava/util/Map;

    iget-object v3, p0, Lcom/mapbox/mapboxsdk/style/sources/CustomGeometrySource$b;->e:Lcom/mapbox/mapboxsdk/style/sources/CustomGeometrySource$c;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/style/sources/CustomGeometrySource$b;->g:Ljava/util/Map;

    iget-object v3, p0, Lcom/mapbox/mapboxsdk/style/sources/CustomGeometrySource$b;->e:Lcom/mapbox/mapboxsdk/style/sources/CustomGeometrySource$c;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 19
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/style/sources/CustomGeometrySource$b;->g:Ljava/util/Map;

    iget-object v3, p0, Lcom/mapbox/mapboxsdk/style/sources/CustomGeometrySource$b;->e:Lcom/mapbox/mapboxsdk/style/sources/CustomGeometrySource$c;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mapbox/mapboxsdk/style/sources/CustomGeometrySource$b;

    .line 20
    iget-object v3, p0, Lcom/mapbox/mapboxsdk/style/sources/CustomGeometrySource$b;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mapbox/mapboxsdk/style/sources/CustomGeometrySource;

    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    .line 21
    invoke-static {v3}, Lcom/mapbox/mapboxsdk/style/sources/CustomGeometrySource;->a(Lcom/mapbox/mapboxsdk/style/sources/CustomGeometrySource;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 22
    :cond_3
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/style/sources/CustomGeometrySource$b;->g:Ljava/util/Map;

    iget-object v3, p0, Lcom/mapbox/mapboxsdk/style/sources/CustomGeometrySource$b;->e:Lcom/mapbox/mapboxsdk/style/sources/CustomGeometrySource$c;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    :cond_4
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 24
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    return-void

    :catchall_0
    move-exception v2

    .line 25
    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    throw v2

    :catchall_1
    move-exception v0

    .line 26
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw v0

    :catchall_2
    move-exception v2

    .line 27
    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    throw v2

    :catchall_3
    move-exception v1

    .line 28
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    throw v1
.end method
