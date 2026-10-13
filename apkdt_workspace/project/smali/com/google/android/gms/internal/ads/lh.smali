.class final Lcom/google/android/gms/internal/ads/lh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic e:Ljava/lang/String;

.field private final synthetic f:Ljava/lang/String;

.field private final synthetic g:J

.field private final synthetic h:J

.field private final synthetic i:Z

.field private final synthetic j:I

.field private final synthetic k:I

.field private final synthetic l:Lcom/google/android/gms/internal/ads/jh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/jh;Ljava/lang/String;Ljava/lang/String;JJZII)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/lh;->l:Lcom/google/android/gms/internal/ads/jh;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/lh;->e:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/lh;->f:Ljava/lang/String;

    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/lh;->g:J

    iput-wide p6, p0, Lcom/google/android/gms/internal/ads/lh;->h:J

    iput-boolean p8, p0, Lcom/google/android/gms/internal/ads/lh;->i:Z

    iput p9, p0, Lcom/google/android/gms/internal/ads/lh;->j:I

    iput p10, p0, Lcom/google/android/gms/internal/ads/lh;->k:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "event"

    const-string v2, "precacheProgress"

    .line 2
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/lh;->e:Ljava/lang/String;

    const-string v2, "src"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/lh;->f:Ljava/lang/String;

    const-string v2, "cachedSrc"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/lh;->g:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "bufferedDuration"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/lh;->h:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "totalDuration"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/lh;->i:Z

    if-eqz v1, :cond_0

    const-string v1, "1"

    goto :goto_0

    :cond_0
    const-string v1, "0"

    :goto_0
    const-string v2, "cacheReady"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget v1, p0, Lcom/google/android/gms/internal/ads/lh;->j:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "playerCount"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget v1, p0, Lcom/google/android/gms/internal/ads/lh;->k:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "playerPreparedCount"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/lh;->l:Lcom/google/android/gms/internal/ads/jh;

    const-string v2, "onPrecacheEvent"

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/jh;->a(Lcom/google/android/gms/internal/ads/jh;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
