.class public abstract Lcom/google/android/gms/internal/ads/wd1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/ci;


# static fields
.field private static l:Lcom/google/android/gms/internal/ads/fe1;


# instance fields
.field private e:Ljava/lang/String;

.field f:Z

.field private g:Z

.field private h:Ljava/nio/ByteBuffer;

.field private i:J

.field private j:J

.field private k:Lcom/google/android/gms/internal/ads/zd1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/wd1;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/fe1;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/fe1;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/wd1;->l:Lcom/google/android/gms/internal/ads/fe1;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/wd1;->j:J

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/wd1;->e:Ljava/lang/String;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/wd1;->g:Z

    .line 5
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/wd1;->f:Z

    return-void
.end method

.method private final declared-synchronized b()V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/wd1;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 2
    :try_start_1
    sget-object v0, Lcom/google/android/gms/internal/ads/wd1;->l:Lcom/google/android/gms/internal/ads/fe1;

    const-string v1, "mem mapping "

    .line 3
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/wd1;->e:Ljava/lang/String;

    .line 4
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/fe1;->a(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wd1;->k:Lcom/google/android/gms/internal/ads/zd1;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/wd1;->i:J

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/wd1;->j:J

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zd1;->a(JJ)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/wd1;->h:Ljava/nio/ByteBuffer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    .line 6
    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/wd1;->g:Z

    goto :goto_1

    :catch_0
    move-exception v0

    .line 7
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 8
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 4

    monitor-enter p0

    .line 9
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/wd1;->b()V

    .line 10
    sget-object v0, Lcom/google/android/gms/internal/ads/wd1;->l:Lcom/google/android/gms/internal/ads/fe1;

    const-string v1, "parsing details of "

    .line 11
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/wd1;->e:Ljava/lang/String;

    .line 12
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/fe1;->a(Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wd1;->h:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_2

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wd1;->h:Ljava/nio/ByteBuffer;

    const/4 v1, 0x1

    .line 15
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/wd1;->f:Z

    .line 16
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 17
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/wd1;->a(Ljava/nio/ByteBuffer;)V

    .line 18
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-lez v1, :cond_1

    .line 19
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    :cond_1
    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/wd1;->h:Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/uk;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/zd1;Ljava/nio/ByteBuffer;JLcom/google/android/gms/internal/ads/bh;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zd1;->position()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/wd1;->i:J

    .line 2
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    .line 3
    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/wd1;->j:J

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/wd1;->k:Lcom/google/android/gms/internal/ads/zd1;

    .line 5
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zd1;->position()J

    move-result-wide v0

    add-long/2addr v0, p3

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zd1;->g(J)V

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/wd1;->g:Z

    .line 7
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/wd1;->f:Z

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/wd1;->a()V

    return-void
.end method

.method protected abstract a(Ljava/nio/ByteBuffer;)V
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wd1;->e:Ljava/lang/String;

    return-object v0
.end method
