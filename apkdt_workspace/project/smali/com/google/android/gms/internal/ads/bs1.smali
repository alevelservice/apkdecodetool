.class final Lcom/google/android/gms/internal/ads/bs1;
.super Lcom/google/android/gms/internal/ads/he;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/he<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic f:Lcom/google/android/gms/internal/ads/cs1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/cs1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bs1;->f:Lcom/google/android/gms/internal/ads/cs1;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/he;-><init>()V

    return-void
.end method


# virtual methods
.method public final cancel(Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bs1;->f:Lcom/google/android/gms/internal/ads/cs1;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cs1;->a(Lcom/google/android/gms/internal/ads/cs1;)V

    .line 2
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/he;->cancel(Z)Z

    move-result p1

    return p1
.end method
