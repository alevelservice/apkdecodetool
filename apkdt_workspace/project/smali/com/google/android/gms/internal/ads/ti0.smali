.class final Lcom/google/android/gms/internal/ads/ti0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/hz0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/hz0<",
        "Lcom/google/android/gms/internal/ads/po;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/lo;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/zzclk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzclk;Lcom/google/android/gms/internal/ads/lo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ti0;->b:Lcom/google/android/gms/internal/ads/zzclk;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ti0;->a:Lcom/google/android/gms/internal/ads/lo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    .line 8
    check-cast p1, Lcom/google/android/gms/internal/ads/po;

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ti0;->b:Lcom/google/android/gms/internal/ads/zzclk;

    monitor-enter v0

    .line 10
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ti0;->b:Lcom/google/android/gms/internal/ads/zzclk;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzclk;->zza(Lcom/google/android/gms/internal/ads/zzclk;Lcom/google/android/gms/internal/ads/qz0;)Lcom/google/android/gms/internal/ads/qz0;

    .line 11
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ti0;->b:Lcom/google/android/gms/internal/ads/zzclk;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzclk;->zzgbo:Lcom/google/android/gms/internal/ads/po;

    if-eqz v1, :cond_0

    .line 12
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ti0;->b:Lcom/google/android/gms/internal/ads/zzclk;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzclk;->zzgbo:Lcom/google/android/gms/internal/ads/po;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/sq;->a()V

    .line 13
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ti0;->b:Lcom/google/android/gms/internal/ads/zzclk;

    iput-object p1, v1, Lcom/google/android/gms/internal/ads/zzclk;->zzgbo:Lcom/google/android/gms/internal/ads/po;

    .line 14
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ti0;->b:Lcom/google/android/gms/internal/ads/zzclk;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzclk;->zza(Lcom/google/android/gms/internal/ads/zzclk;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 15
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ti0;->b:Lcom/google/android/gms/internal/ads/zzclk;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzclk;->zza(Lcom/google/android/gms/internal/ads/zzclk;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/po;->h()Landroid/view/View;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/ads/internal/n;->e()Lcom/google/android/gms/internal/ads/db;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/db;->b()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 16
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ti0;->b:Lcom/google/android/gms/internal/ads/zzclk;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzclk;->zza(Lcom/google/android/gms/internal/ads/zzclk;Lcom/google/android/gms/internal/ads/po;)Lcom/google/android/gms/ads/internal/overlay/zzo;

    move-result-object v1

    .line 17
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ti0;->b:Lcom/google/android/gms/internal/ads/zzclk;

    .line 18
    invoke-static {v2, p1}, Lcom/google/android/gms/internal/ads/zzclk;->zzb(Lcom/google/android/gms/internal/ads/zzclk;Lcom/google/android/gms/internal/ads/po;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v2

    .line 19
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/po;->i()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/ads/internal/overlay/zzo;->zzae(Z)V

    .line 20
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ti0;->b:Lcom/google/android/gms/internal/ads/zzclk;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzclk;->zza(Lcom/google/android/gms/internal/ads/zzclk;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 21
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ti0;->b:Lcom/google/android/gms/internal/ads/zzclk;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzclk;->zzc(Lcom/google/android/gms/internal/ads/zzclk;Lcom/google/android/gms/internal/ads/po;)V

    .line 22
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ti0;->b:Lcom/google/android/gms/internal/ads/zzclk;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzclk;->zza(Lcom/google/android/gms/internal/ads/zzclk;)Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ti0;->b:Lcom/google/android/gms/internal/ads/zzclk;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzclk;->zzb(Lcom/google/android/gms/internal/ads/zzclk;)Lcom/google/android/gms/internal/ads/zztw;

    move-result-object v2

    iget v2, v2, Lcom/google/android/gms/internal/ads/zztw;->g:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setMinimumHeight(I)V

    .line 23
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ti0;->b:Lcom/google/android/gms/internal/ads/zzclk;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzclk;->zza(Lcom/google/android/gms/internal/ads/zzclk;)Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ti0;->b:Lcom/google/android/gms/internal/ads/zzclk;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzclk;->zzb(Lcom/google/android/gms/internal/ads/zzclk;)Lcom/google/android/gms/internal/ads/zztw;

    move-result-object v2

    iget v2, v2, Lcom/google/android/gms/internal/ads/zztw;->j:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setMinimumWidth(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ti0;->b:Lcom/google/android/gms/internal/ads/zzclk;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzclk;->zzc(Lcom/google/android/gms/internal/ads/zzclk;)Lcom/google/android/gms/internal/ads/zzqu;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbhu;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ti0;->b:Lcom/google/android/gms/internal/ads/zzclk;

    invoke-direct {v2, p1, v3}, Lcom/google/android/gms/internal/ads/zzbhu;-><init>(Lcom/google/android/gms/internal/ads/po;Lcom/google/android/gms/internal/ads/zzve;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzqu;->zza(Lcom/google/android/gms/internal/ads/zzqs;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "RemoteException when onAppOpenAdLoaded is called"

    .line 25
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/qd;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 26
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/sq;->c()V

    .line 27
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ti0;->b:Lcom/google/android/gms/internal/ads/zzclk;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ti0;->b:Lcom/google/android/gms/internal/ads/zzclk;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzclk;->zza(Lcom/google/android/gms/internal/ads/zzclk;Lcom/google/android/gms/internal/ads/qz0;)Lcom/google/android/gms/internal/ads/qz0;

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ti0;->a:Lcom/google/android/gms/internal/ads/lo;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/lo;->b()Lcom/google/android/gms/internal/ads/mt;

    move-result-object v1

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/t90;->zzd(Ljava/lang/Throwable;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/mt;->onAdFailedToLoad(I)V

    const-string v1, "AppOpenAdManagerShim.onFailure"

    .line 6
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/ct0;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

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
