.class public final Lcom/google/android/gms/internal/ads/jz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/m;


# instance fields
.field private final e:Lcom/google/android/gms/internal/ads/yu;

.field private final f:Lcom/google/android/gms/internal/ads/jx;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/yu;Lcom/google/android/gms/internal/ads/jx;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/jz;->e:Lcom/google/android/gms/internal/ads/yu;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/jz;->f:Lcom/google/android/gms/internal/ads/jx;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jz;->e:Lcom/google/android/gms/internal/ads/yu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/yu;->a()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jz;->f:Lcom/google/android/gms/internal/ads/jx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/jx;->g()V

    return-void
.end method

.method public final b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jz;->e:Lcom/google/android/gms/internal/ads/yu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/yu;->b()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jz;->f:Lcom/google/android/gms/internal/ads/jx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/jx;->h()V

    return-void
.end method

.method public final onPause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jz;->e:Lcom/google/android/gms/internal/ads/yu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/yu;->onPause()V

    return-void
.end method

.method public final onResume()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jz;->e:Lcom/google/android/gms/internal/ads/yu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/yu;->onResume()V

    return-void
.end method
