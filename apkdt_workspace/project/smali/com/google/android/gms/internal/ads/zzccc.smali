.class final Lcom/google/android/gms/internal/ads/zzccc;
.super Lcom/google/android/gms/internal/ads/zzafc;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# instance fields
.field private final synthetic e:Ljava/lang/Object;

.field private final synthetic f:Ljava/lang/String;

.field private final synthetic g:J

.field private final synthetic h:Lcom/google/android/gms/internal/ads/he;

.field private final synthetic i:Lcom/google/android/gms/internal/ads/e90;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/e90;Ljava/lang/Object;Ljava/lang/String;JLcom/google/android/gms/internal/ads/he;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzccc;->i:Lcom/google/android/gms/internal/ads/e90;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzccc;->e:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzccc;->f:Ljava/lang/String;

    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zzccc;->g:J

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzccc;->h:Lcom/google/android/gms/internal/ads/he;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzafc;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInitializationFailed(Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccc;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzccc;->i:Lcom/google/android/gms/internal/ads/e90;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzccc;->f:Ljava/lang/String;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/n;->j()Lcom/google/android/gms/common/util/e;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/e;->c()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzccc;->g:J

    sub-long/2addr v3, v5

    long-to-int v4, v3

    const/4 v3, 0x0

    .line 4
    invoke-static {v1, v2, v3, p1, v4}, Lcom/google/android/gms/internal/ads/e90;->a(Lcom/google/android/gms/internal/ads/e90;Ljava/lang/String;ZLjava/lang/String;I)V

    .line 5
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzccc;->i:Lcom/google/android/gms/internal/ads/e90;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/e90;->d(Lcom/google/android/gms/internal/ads/e90;)Lcom/google/android/gms/internal/ads/n80;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzccc;->f:Ljava/lang/String;

    const-string v2, "error"

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/n80;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzccc;->h:Lcom/google/android/gms/internal/ads/he;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/he;->b(Ljava/lang/Object;)Z

    .line 7
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final onInitializationSucceeded()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccc;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzccc;->i:Lcom/google/android/gms/internal/ads/e90;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzccc;->f:Ljava/lang/String;

    const-string v3, ""

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/n;->j()Lcom/google/android/gms/common/util/e;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/e;->c()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zzccc;->g:J

    sub-long/2addr v4, v6

    long-to-int v5, v4

    const/4 v4, 0x1

    .line 4
    invoke-static {v1, v2, v4, v3, v5}, Lcom/google/android/gms/internal/ads/e90;->a(Lcom/google/android/gms/internal/ads/e90;Ljava/lang/String;ZLjava/lang/String;I)V

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzccc;->i:Lcom/google/android/gms/internal/ads/e90;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/e90;->d(Lcom/google/android/gms/internal/ads/e90;)Lcom/google/android/gms/internal/ads/n80;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzccc;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/n80;->b(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzccc;->h:Lcom/google/android/gms/internal/ads/he;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/he;->b(Ljava/lang/Object;)Z

    .line 7
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
