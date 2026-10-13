.class final Lcom/google/android/gms/internal/ads/b81;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-base@@18.1.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/m81;

.field private final b:[B


# direct methods
.method private constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/b81;->b:[B

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/b81;->b:[B

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/m81;->a([B)Lcom/google/android/gms/internal/ads/m81;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/b81;->a:Lcom/google/android/gms/internal/ads/m81;

    return-void
.end method

.method synthetic constructor <init>(ILcom/google/android/gms/internal/ads/w71;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/b81;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/t71;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/b81;->a:Lcom/google/android/gms/internal/ads/m81;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/m81;->c()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/e81;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/b81;->b:[B

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/e81;-><init>([B)V

    return-object v0
.end method

.method public final b()Lcom/google/android/gms/internal/ads/m81;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/b81;->a:Lcom/google/android/gms/internal/ads/m81;

    return-object v0
.end method
