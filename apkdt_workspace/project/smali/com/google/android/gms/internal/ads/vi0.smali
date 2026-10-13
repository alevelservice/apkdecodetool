.class final Lcom/google/android/gms/internal/ads/vi0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/hz0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/hz0<",
        "Lcom/google/android/gms/internal/ads/uo;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/qp;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/zzclo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzclo;Lcom/google/android/gms/internal/ads/qp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vi0;->b:Lcom/google/android/gms/internal/ads/zzclo;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/vi0;->a:Lcom/google/android/gms/internal/ads/qp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .line 9
    check-cast p1, Lcom/google/android/gms/internal/ads/uo;

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vi0;->b:Lcom/google/android/gms/internal/ads/zzclo;

    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vi0;->b:Lcom/google/android/gms/internal/ads/zzclo;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzclo;->zza(Lcom/google/android/gms/internal/ads/zzclo;Lcom/google/android/gms/internal/ads/qz0;)Lcom/google/android/gms/internal/ads/qz0;

    .line 12
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vi0;->b:Lcom/google/android/gms/internal/ads/zzclo;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzclo;->zza(Lcom/google/android/gms/internal/ads/zzclo;)Lcom/google/android/gms/internal/ads/uo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 13
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vi0;->b:Lcom/google/android/gms/internal/ads/zzclo;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzclo;->zza(Lcom/google/android/gms/internal/ads/zzclo;)Lcom/google/android/gms/internal/ads/uo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/sq;->a()V

    .line 14
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vi0;->b:Lcom/google/android/gms/internal/ads/zzclo;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzclo;->zza(Lcom/google/android/gms/internal/ads/zzclo;Lcom/google/android/gms/internal/ads/uo;)Lcom/google/android/gms/internal/ads/uo;

    .line 15
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vi0;->b:Lcom/google/android/gms/internal/ads/zzclo;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzclo;->zzb(Lcom/google/android/gms/internal/ads/zzclo;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 16
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vi0;->b:Lcom/google/android/gms/internal/ads/zzclo;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzclo;->zzb(Lcom/google/android/gms/internal/ads/zzclo;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/uo;->h()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 17
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/sq;->c()V

    .line 18
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vi0;->b:Lcom/google/android/gms/internal/ads/zzclo;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzclo;->zzc(Lcom/google/android/gms/internal/ads/zzclo;)Lcom/google/android/gms/internal/ads/kv;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/uo;->i()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/kv;->a(I)V

    .line 19
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vi0;->b:Lcom/google/android/gms/internal/ads/zzclo;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vi0;->b:Lcom/google/android/gms/internal/ads/zzclo;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzclo;->zza(Lcom/google/android/gms/internal/ads/zzclo;Lcom/google/android/gms/internal/ads/qz0;)Lcom/google/android/gms/internal/ads/qz0;

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vi0;->a:Lcom/google/android/gms/internal/ads/qp;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/qp;->b()Lcom/google/android/gms/internal/ads/mt;

    move-result-object v1

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/t90;->zzd(Ljava/lang/Throwable;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/mt;->onAdFailedToLoad(I)V

    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vi0;->b:Lcom/google/android/gms/internal/ads/zzclo;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzclo;->zzc(Lcom/google/android/gms/internal/ads/zzclo;)Lcom/google/android/gms/internal/ads/kv;

    move-result-object v1

    const/16 v2, 0x3c

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/kv;->a(I)V

    const-string v1, "BannerAdManagerShim.onFailure"

    .line 7
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/ct0;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 8
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
