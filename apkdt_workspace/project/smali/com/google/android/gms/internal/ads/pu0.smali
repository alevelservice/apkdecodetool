.class public final Lcom/google/android/gms/internal/ads/pu0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# instance fields
.field private final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private final synthetic b:Lcom/google/android/gms/internal/ads/ku0;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/ku0;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/pu0;->b:Lcom/google/android/gms/internal/ads/ku0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/pu0;->a:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/ku0;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/ju0;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/pu0;-><init>(Lcom/google/android/gms/internal/ads/ku0;Ljava/lang/Object;)V

    return-void
.end method

.method private final a(Ljava/util/concurrent/Callable;Lcom/google/android/gms/internal/ads/tz0;)Lcom/google/android/gms/internal/ads/ru0;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TO;>;",
            "Lcom/google/android/gms/internal/ads/tz0;",
            ")",
            "Lcom/google/android/gms/internal/ads/ru0<",
            "TO;>;"
        }
    .end annotation

    .line 4
    new-instance v8, Lcom/google/android/gms/internal/ads/ru0;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/pu0;->b:Lcom/google/android/gms/internal/ads/ku0;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/pu0;->a:Ljava/lang/Object;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/ku0;->a()Lcom/google/android/gms/internal/ads/qz0;

    move-result-object v4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/tz0;->a(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object v6

    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/ru0;-><init>(Lcom/google/android/gms/internal/ads/ku0;Ljava/lang/Object;Ljava/lang/String;Lcom/google/android/gms/internal/ads/qz0;Ljava/util/List;Lcom/google/android/gms/internal/ads/qz0;Lcom/google/android/gms/internal/ads/ju0;)V

    return-object v8
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/iu0;Lcom/google/android/gms/internal/ads/tz0;)Lcom/google/android/gms/internal/ads/ru0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/iu0;",
            "Lcom/google/android/gms/internal/ads/tz0;",
            ")",
            "Lcom/google/android/gms/internal/ads/ru0<",
            "*>;"
        }
    .end annotation

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/ou0;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/ou0;-><init>(Lcom/google/android/gms/internal/ads/iu0;)V

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/ads/pu0;->a(Ljava/util/concurrent/Callable;Lcom/google/android/gms/internal/ads/tz0;)Lcom/google/android/gms/internal/ads/ru0;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/google/android/gms/internal/ads/qz0;)Lcom/google/android/gms/internal/ads/ru0;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/qz0<",
            "TO;>;)",
            "Lcom/google/android/gms/internal/ads/ru0<",
            "TO;>;"
        }
    .end annotation

    .line 1
    new-instance v8, Lcom/google/android/gms/internal/ads/ru0;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/pu0;->b:Lcom/google/android/gms/internal/ads/ku0;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/pu0;->a:Ljava/lang/Object;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/ku0;->a()Lcom/google/android/gms/internal/ads/qz0;

    move-result-object v4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/ru0;-><init>(Lcom/google/android/gms/internal/ads/ku0;Ljava/lang/Object;Ljava/lang/String;Lcom/google/android/gms/internal/ads/qz0;Ljava/util/List;Lcom/google/android/gms/internal/ads/qz0;Lcom/google/android/gms/internal/ads/ju0;)V

    return-object v8
.end method

.method public final a(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/ru0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TO;>;)",
            "Lcom/google/android/gms/internal/ads/ru0<",
            "TO;>;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pu0;->b:Lcom/google/android/gms/internal/ads/ku0;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ku0;->a(Lcom/google/android/gms/internal/ads/ku0;)Lcom/google/android/gms/internal/ads/tz0;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/pu0;->a(Ljava/util/concurrent/Callable;Lcom/google/android/gms/internal/ads/tz0;)Lcom/google/android/gms/internal/ads/ru0;

    move-result-object p1

    return-object p1
.end method
