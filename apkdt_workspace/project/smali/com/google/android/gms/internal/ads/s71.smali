.class final Lcom/google/android/gms/internal/ads/s71;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-base@@18.1.0"


# instance fields
.field public a:I

.field public b:J

.field public c:Ljava/lang/Object;

.field public final d:Lcom/google/android/gms/internal/ads/q81;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/q81;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/s71;->d:Lcom/google/android/gms/internal/ads/q81;

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method
