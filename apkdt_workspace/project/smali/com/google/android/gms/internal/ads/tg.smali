.class final synthetic Lcom/google/android/gms/internal/ads/tg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zn1;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zn1;

.field private final b:[B


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zn1;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/tg;->a:Lcom/google/android/gms/internal/ads/zn1;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/tg;->b:[B

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/wn1;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tg;->a:Lcom/google/android/gms/internal/ads/zn1;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/tg;->b:[B

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zn1;->a()Lcom/google/android/gms/internal/ads/wn1;

    move-result-object v0

    .line 3
    new-instance v2, Lcom/google/android/gms/internal/ads/xn1;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/xn1;-><init>([B)V

    .line 4
    new-instance v3, Lcom/google/android/gms/internal/ads/xg;

    array-length v1, v1

    invoke-direct {v3, v2, v1, v0}, Lcom/google/android/gms/internal/ads/xg;-><init>(Lcom/google/android/gms/internal/ads/wn1;ILcom/google/android/gms/internal/ads/wn1;)V

    return-object v3
.end method
