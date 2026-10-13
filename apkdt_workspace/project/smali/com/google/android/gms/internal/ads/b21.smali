.class final Lcom/google/android/gms/internal/ads/b21;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/s01;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/b11;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/b11<",
            "Lcom/google/android/gms/internal/ads/s01;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/b11;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/b11<",
            "Lcom/google/android/gms/internal/ads/s01;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/b21;->a:Lcom/google/android/gms/internal/ads/b11;

    return-void
.end method


# virtual methods
.method public final a([B[B)[B
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [[B

    .line 1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/b21;->a:Lcom/google/android/gms/internal/ads/b11;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/b11;->b()Lcom/google/android/gms/internal/ads/a11;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/a11;->d()[B

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/b21;->a:Lcom/google/android/gms/internal/ads/b11;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/b11;->b()Lcom/google/android/gms/internal/ads/a11;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/a11;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/s01;

    invoke-interface {v1, p1, p2}, Lcom/google/android/gms/internal/ads/s01;->a([B[B)[B

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/s51;->a([[B)[B

    move-result-object p1

    return-object p1
.end method
