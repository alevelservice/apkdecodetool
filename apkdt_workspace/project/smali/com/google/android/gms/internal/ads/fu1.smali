.class final Lcom/google/android/gms/internal/ads/fu1;
.super Lcom/google/android/gms/internal/ads/ku1;
.source "com.google.android.gms:play-services-ads-lite@@18.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/ku1<",
        "Lcom/google/android/gms/internal/ads/zzamu;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic b:Landroid/app/Activity;

.field private final synthetic c:Lcom/google/android/gms/internal/ads/eu1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/eu1;Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/fu1;->c:Lcom/google/android/gms/internal/ads/eu1;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/fu1;->b:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ku1;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic a()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fu1;->b:Landroid/app/Activity;

    const-string v1, "ad_overlay"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/eu1;->b(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/zzvn;)Ljava/lang/Object;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fu1;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzvn;->zzf(Lcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/internal/ads/zzamu;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic b()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fu1;->c:Lcom/google/android/gms/internal/ads/eu1;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/eu1;->d(Lcom/google/android/gms/internal/ads/eu1;)Lcom/google/android/gms/internal/ads/p6;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/fu1;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/p6;->a(Landroid/app/Activity;)Lcom/google/android/gms/internal/ads/zzamu;

    move-result-object v0

    return-object v0
.end method
