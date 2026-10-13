.class final synthetic Lcom/google/android/gms/internal/ads/dl0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/lo0;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/al0;

.field private final b:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/al0;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dl0;->a:Lcom/google/android/gms/internal/ads/al0;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/dl0;->b:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dl0;->a:Lcom/google/android/gms/internal/ads/al0;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dl0;->b:Landroid/os/Bundle;

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/al0;->a(Landroid/os/Bundle;Landroid/os/Bundle;)V

    return-void
.end method
