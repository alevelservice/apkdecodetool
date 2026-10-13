.class public final Lcom/google/android/gms/internal/ads/eh;
.super Lcom/google/android/gms/internal/ads/ja;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# instance fields
.field final c:Lcom/google/android/gms/internal/ads/tf;

.field final d:Lcom/google/android/gms/internal/ads/jh;

.field private final e:Ljava/lang/String;

.field private final f:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/tf;Lcom/google/android/gms/internal/ads/jh;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ja;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/eh;->c:Lcom/google/android/gms/internal/ads/tf;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/eh;->d:Lcom/google/android/gms/internal/ads/jh;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/eh;->e:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/eh;->f:[Ljava/lang/String;

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/n;->y()Lcom/google/android/gms/internal/ads/gh;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/gh;->a(Lcom/google/android/gms/internal/ads/eh;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eh;->d:Lcom/google/android/gms/internal/ads/jh;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/eh;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/eh;->f:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/jh;->a(Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/wa;->h:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/hh;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/hh;-><init>(Lcom/google/android/gms/internal/ads/eh;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception v0

    .line 3
    sget-object v1, Lcom/google/android/gms/internal/ads/wa;->h:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/ads/hh;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/hh;-><init>(Lcom/google/android/gms/internal/ads/eh;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    throw v0
.end method
