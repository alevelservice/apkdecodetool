.class public Lcom/google/android/gms/internal/ads/vd1;
.super Lcom/google/android/gms/internal/ads/xd1;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/ci;


# instance fields
.field private l:Ljava/lang/String;

.field private m:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/xd1;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vd1;->l:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/uk;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/zd1;JLcom/google/android/gms/internal/ads/bh;)V
    .locals 5

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/xd1;->f:Lcom/google/android/gms/internal/ads/zd1;

    .line 5
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zd1;->position()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/xd1;->h:J

    .line 6
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/vd1;->m:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x8

    add-long/2addr v0, p2

    const-wide v2, 0x100000000L

    cmp-long v4, v0, v2

    .line 7
    :cond_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zd1;->position()J

    move-result-wide v0

    add-long/2addr v0, p2

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zd1;->g(J)V

    .line 8
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zd1;->position()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/xd1;->i:J

    .line 9
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/xd1;->e:Lcom/google/android/gms/internal/ads/bh;

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/zd1;Ljava/nio/ByteBuffer;JLcom/google/android/gms/internal/ads/bh;)V
    .locals 1

    .line 1
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zd1;->position()J

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    .line 2
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p2

    const/16 v0, 0x10

    if-ne p2, v0, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/vd1;->m:Z

    .line 3
    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/google/android/gms/internal/ads/vd1;->a(Lcom/google/android/gms/internal/ads/zd1;JLcom/google/android/gms/internal/ads/bh;)V

    return-void
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vd1;->l:Ljava/lang/String;

    return-object v0
.end method
