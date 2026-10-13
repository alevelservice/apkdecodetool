.class public abstract Lcom/google/android/gms/internal/ads/yd1;
.super Lcom/google/android/gms/internal/ads/wd1;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/ci;


# instance fields
.field private m:I


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/wd1;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final b()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/wd1;->f:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/wd1;->a()V

    .line 3
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/yd1;->m:I

    return v0
.end method

.method protected final b(Ljava/nio/ByteBuffer;)J
    .locals 2

    .line 4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/bj;->a(B)I

    move-result v0

    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/ads/yd1;->m:I

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/bj;->b(Ljava/nio/ByteBuffer;)I

    .line 7
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/bj;->a(B)I

    const-wide/16 v0, 0x4

    return-wide v0
.end method
