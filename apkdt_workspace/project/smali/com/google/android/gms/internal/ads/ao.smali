.class public final Lcom/google/android/gms/internal/ads/ao;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/fq1;


# instance fields
.field private e:Lcom/google/android/gms/internal/ads/fi;

.field private final f:Ljava/util/concurrent/Executor;

.field private final g:Lcom/google/android/gms/internal/ads/on;

.field private final h:Lcom/google/android/gms/common/util/e;

.field private i:Z

.field private j:Z

.field private k:Lcom/google/android/gms/internal/ads/sn;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/on;Lcom/google/android/gms/common/util/e;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/ao;->i:Z

    .line 3
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/ao;->j:Z

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/sn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/sn;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ao;->k:Lcom/google/android/gms/internal/ads/sn;

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ao;->f:Ljava/util/concurrent/Executor;

    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ao;->g:Lcom/google/android/gms/internal/ads/on;

    .line 7
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ao;->h:Lcom/google/android/gms/common/util/e;

    return-void
.end method

.method private final c()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ao;->g:Lcom/google/android/gms/internal/ads/on;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ao;->k:Lcom/google/android/gms/internal/ads/sn;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/on;->a(Lcom/google/android/gms/internal/ads/sn;)Lorg/json/JSONObject;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ao;->e:Lcom/google/android/gms/internal/ads/fi;

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ao;->f:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/android/gms/internal/ads/do;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/do;-><init>(Lcom/google/android/gms/internal/ads/ao;Lorg/json/JSONObject;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to call video active view js"

    .line 4
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/na;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/ao;->i:Z

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/fi;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ao;->e:Lcom/google/android/gms/internal/ads/fi;

    return-void
.end method

.method final synthetic a(Lorg/json/JSONObject;)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ao;->e:Lcom/google/android/gms/internal/ads/fi;

    const-string v1, "AFMA_updateActiveView"

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/r2;->zzb(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/ao;->j:Z

    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/ao;->i:Z

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ao;->c()V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/cq1;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ao;->k:Lcom/google/android/gms/internal/ads/sn;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/ao;->j:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-boolean v1, p1, Lcom/google/android/gms/internal/ads/cq1;->j:Z

    :goto_0
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/sn;->a:Z

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ao;->k:Lcom/google/android/gms/internal/ads/sn;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ao;->h:Lcom/google/android/gms/common/util/e;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/e;->c()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/sn;->c:J

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ao;->k:Lcom/google/android/gms/internal/ads/sn;

    iput-object p1, v0, Lcom/google/android/gms/internal/ads/sn;->e:Lcom/google/android/gms/internal/ads/cq1;

    .line 4
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/ao;->i:Z

    if-eqz p1, :cond_1

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ao;->c()V

    :cond_1
    return-void
.end method
