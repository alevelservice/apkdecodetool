.class final Lcom/google/android/gms/vision/a$c;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-vision-common@@19.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/vision/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field private e:Lcom/google/android/gms/vision/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/vision/b<",
            "*>;"
        }
    .end annotation
.end field

.field private f:J

.field private final g:Ljava/lang/Object;

.field private h:Z

.field private i:J

.field private j:I

.field private k:Ljava/nio/ByteBuffer;

.field private final synthetic l:Lcom/google/android/gms/vision/a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/vision/a;Lcom/google/android/gms/vision/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/vision/b<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/vision/a$c;->l:Lcom/google/android/gms/vision/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/vision/a$c;->f:J

    .line 3
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/vision/a$c;->g:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/google/android/gms/vision/a$c;->h:Z

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/google/android/gms/vision/a$c;->j:I

    .line 6
    iput-object p2, p0, Lcom/google/android/gms/vision/a$c;->e:Lcom/google/android/gms/vision/b;

    return-void
.end method


# virtual methods
.method final a(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/vision/a$c;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iput-boolean p1, p0, Lcom/google/android/gms/vision/a$c;->h:Z

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/vision/a$c;->g:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method final a([BLandroid/hardware/Camera;)V
    .locals 5

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/vision/a$c;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/vision/a$c;->k:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_0

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/vision/a$c;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    const/4 p2, 0x0

    .line 8
    iput-object p2, p0, Lcom/google/android/gms/vision/a$c;->k:Ljava/nio/ByteBuffer;

    .line 9
    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/vision/a$c;->l:Lcom/google/android/gms/vision/a;

    invoke-static {p2}, Lcom/google/android/gms/vision/a;->c(Lcom/google/android/gms/vision/a;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 10
    monitor-exit v0

    return-void

    .line 11
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/android/gms/vision/a$c;->f:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/gms/vision/a$c;->i:J

    .line 12
    iget p2, p0, Lcom/google/android/gms/vision/a$c;->j:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/google/android/gms/vision/a$c;->j:I

    .line 13
    iget-object p2, p0, Lcom/google/android/gms/vision/a$c;->l:Lcom/google/android/gms/vision/a;

    invoke-static {p2}, Lcom/google/android/gms/vision/a;->c(Lcom/google/android/gms/vision/a;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lcom/google/android/gms/vision/a$c;->k:Ljava/nio/ByteBuffer;

    .line 14
    iget-object p1, p0, Lcom/google/android/gms/vision/a$c;->g:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 15
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final run()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/vision/a$c;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :goto_1
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/vision/a$c;->h:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/vision/a$c;->k:Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_0

    .line 3
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/vision/a$c;->g:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 4
    :catch_0
    :try_start_2
    monitor-exit v0

    return-void

    .line 5
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/vision/a$c;->h:Z

    if-nez v1, :cond_1

    .line 6
    monitor-exit v0

    return-void

    .line 7
    :cond_1
    new-instance v1, Lcom/google/android/gms/vision/c$a;

    invoke-direct {v1}, Lcom/google/android/gms/vision/c$a;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/vision/a$c;->k:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/google/android/gms/vision/a$c;->l:Lcom/google/android/gms/vision/a;

    .line 8
    invoke-static {v3}, Lcom/google/android/gms/vision/a;->e(Lcom/google/android/gms/vision/a;)Lcom/google/android/gms/common/images/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/common/images/a;->b()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/gms/vision/a$c;->l:Lcom/google/android/gms/vision/a;

    .line 9
    invoke-static {v4}, Lcom/google/android/gms/vision/a;->e(Lcom/google/android/gms/vision/a;)Lcom/google/android/gms/common/images/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/common/images/a;->a()I

    move-result v4

    const/16 v5, 0x11

    .line 10
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/gms/vision/c$a;->a(Ljava/nio/ByteBuffer;III)Lcom/google/android/gms/vision/c$a;

    iget v2, p0, Lcom/google/android/gms/vision/a$c;->j:I

    .line 11
    invoke-virtual {v1, v2}, Lcom/google/android/gms/vision/c$a;->a(I)Lcom/google/android/gms/vision/c$a;

    iget-wide v2, p0, Lcom/google/android/gms/vision/a$c;->i:J

    .line 12
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/vision/c$a;->a(J)Lcom/google/android/gms/vision/c$a;

    iget-object v2, p0, Lcom/google/android/gms/vision/a$c;->l:Lcom/google/android/gms/vision/a;

    .line 13
    invoke-static {v2}, Lcom/google/android/gms/vision/a;->d(Lcom/google/android/gms/vision/a;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/vision/c$a;->b(I)Lcom/google/android/gms/vision/c$a;

    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/vision/c$a;->a()Lcom/google/android/gms/vision/c;

    move-result-object v1

    .line 15
    iget-object v2, p0, Lcom/google/android/gms/vision/a$c;->k:Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    .line 16
    iput-object v3, p0, Lcom/google/android/gms/vision/a$c;->k:Ljava/nio/ByteBuffer;

    .line 17
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 18
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/vision/a$c;->e:Lcom/google/android/gms/vision/b;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/vision/b;->b(Lcom/google/android/gms/vision/c;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/vision/a$c;->l:Lcom/google/android/gms/vision/a;

    invoke-static {v0}, Lcom/google/android/gms/vision/a;->a(Lcom/google/android/gms/vision/a;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 20
    iget-object v1, p0, Lcom/google/android/gms/vision/a$c;->l:Lcom/google/android/gms/vision/a;

    invoke-static {v1}, Lcom/google/android/gms/vision/a;->a(Lcom/google/android/gms/vision/a;)Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 21
    throw v0

    .line 22
    :catch_1
    iget-object v0, p0, Lcom/google/android/gms/vision/a$c;->l:Lcom/google/android/gms/vision/a;

    invoke-static {v0}, Lcom/google/android/gms/vision/a;->a(Lcom/google/android/gms/vision/a;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    goto/16 :goto_0

    :catchall_1
    move-exception v1

    .line 23
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method
