.class final Lcom/google/android/gms/internal/ads/k3;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/le;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/le<",
        "Lcom/google/android/gms/internal/ads/p3;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/i3;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/i3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/k3;->a:Lcom/google/android/gms/internal/ads/i3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic b(Ljava/lang/Object;)V
    .locals 0

    const-string p1, "Releasing engine reference."

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/na;->e(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k3;->a:Lcom/google/android/gms/internal/ads/i3;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/i3;->a(Lcom/google/android/gms/internal/ads/i3;)Lcom/google/android/gms/internal/ads/m3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/m3;->d()V

    return-void
.end method
